#
# Cookbook Name:: reprepro
# Recipe:: default
#
# Author:: Joshua Timberman <joshua@opscode.com>
# Copyright 2010, Opscode
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

node.set['apache']['listen_ports'] = node['apache']['listen_ports'] | Array(node['reprepro']['listen_port'])

include_recipe "apache2"

unless(node['reprepro']['disable_databag'])
  begin
    apt_repo = data_bag_item("reprepro", "main")
    node['reprepro'].keys.each do |key|
      next if key.to_sym == :pgp
      # NOTE: Use #has_key? so data bags can nil out existing values
      node.default['reprepro'][key] = apt_repo[key] if apt_repo.has_key?(key)
    end
    node.default['reprepro']['pgp_email'] = apt_repo['pgp']['email']
    node.default['reprepro']['pgp_fingerprint'] = apt_repo['pgp']['fingerprint']
  rescue Net::HTTPServerException
    Chef::Log.warn 'Data bag not found. Using default attribute settings!'
    include_recipe 'gpg'
  end
end

ruby_block "save node data" do
  block do
    node.save
  end
  action :create
  not_if { ::Chef::Config[:solo] }
end

%w{ apt-utils dpkg-dev reprepro debian-keyring devscripts dput }.each do |pkg|
  package pkg
end

group "reprepro"

user "reprepro" do
  supports :manage_home => true
  home "/home/reprepro"
  shell "/bin/bash"
  gid "reprepro"
end

directory node['reprepro']['repo_dir'] do
  owner "reprepro"
  group "reprepro"
  mode "0755"
end

%w{ conf db dists incoming pool tarballs }.each do |dir|
  directory "#{node['reprepro']['repo_dir']}/#{dir}" do
    owner "reprepro"
    group "reprepro"
    mode "0755"
  end
end

%w{ distributions incoming pulls }.each do |conf|
  template "#{node['reprepro']['repo_dir']}/conf/#{conf}" do
    source "#{conf}.erb"
    mode "0644"
    owner "reprepro"
    group "reprepro"
    variables(
      :allow => node['reprepro']['allow'],
      :distributions => node['reprepro']['distributions'],
      :pulls => node['reprepro']['pulls'],
      :repo_dir => node['reprepro']['repo_dir']
    )
  end
end

execute "import-private-key" do
  command "gpg --allow-secret-key-import --import - < /home/reprepro/repository-private.key"
  user "reprepro"
  environment "GNUPGHOME" => "/home/reprepro/.gnupg"
  action :nothing
end

cookbook_file "#{node['reprepro']['repo_dir']}/repository-public.key" do
  source "public.key"
  owner "reprepro"
  group "reprepro"
end

cookbook_file "/home/reprepro/repository-private.key" do
  source "private.key"
  owner "reprepro"
  group "reprepro"
  notifies :run, "execute[import-private-key]", :immediately
end

# if(apt_repo)
#   pgp_key = "#{apt_repo["repo_dir"]}/#{node['reprepro']['pgp_email']}.gpg.key"

#   execute "import packaging key" do
#     command "/bin/echo -e '#{apt_repo['pgp']['private']}' | gpg --import -"
#     user "root"
#     cwd "/root"
#     environment "GNUPGHOME" => node['reprepro']['gnupg_home']
#     not_if "GNUPGHOME=/root/.gnupg gpg --list-secret-keys --fingerprint #{node['reprepro']['pgp_email']} | egrep -qx '.*Key fingerprint = #{node['reprepro']['pgp_fingerprint']}'"
#   end

#   template pgp_key do
#     source "pgp_key.erb"
#     mode "0644"
#     owner "reprepro"
#     group "reprepro"
#     variables(
#       :pgp_public => apt_repo["pgp"]["public"]
#     )
#   end
# else
#   pgp_key = "#{node['reprepro']['repo_dir']}/#{node['gpg']['name']['email']}.gpg.key"
#   node.default['reprepro']['pgp_email'] = node['gpg']['name']['email']

#   execute "sudo -u #{node['gpg']['user']} -i gpg --armor --export #{node['gpg']['name']['real']} > #{pgp_key}" do
#     user "reprepro"
#     creates pgp_key
#   end

#   file pgp_key do
#     mode 0644
#     owner "reprepro"
#     group "reprepro"
#   end

#   execute "reprepro -Vb #{node['reprepro']['repo_dir']} export" do
#     user "reprepro"
#     action :nothing
#     subscribes :run, "file[#{pgp_key}]", :immediately
#     environment "GNUPGHOME" => node['reprepro']['gnupg_home']
#   end
# end

web_app "apt_repo" do
  template "apt_repo.conf.erb"
  server_name node['reprepro']['fqdn']
  server_aliases [node['fqdn']]
  listen_port node['reprepro']['listen_port']
  docroot node['reprepro']['repo_dir']
end
