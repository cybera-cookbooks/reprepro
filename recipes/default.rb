#
# Cookbook Name:: reprepro
# Recipe:: default
#
# Author:: Cameron Mann <cameron.mann@cybera.ca>
# Copyright 2014, Cybera, Inc.
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

include_recipe "apt"
include_recipe "apache2"

%w{ apt-utils curl dpkg-dev reprepro debian-keyring devscripts dput }.each do |pkg|
  package pkg
end

group "reprepro"

user "reprepro" do
  supports :manage_home => true
  home "/home/reprepro"
  shell "/bin/bash"
  gid "reprepro"
end

directory node[:reprepro][:repo_dir] do
  owner "reprepro"
  group "reprepro"
  mode "0755"
end

%w{ conf db dists incoming pool tarballs }.each do |dir|
  directory "#{node[:reprepro][:repo_dir]}/#{dir}" do
    owner "reprepro"
    group "reprepro"
    mode "0755"
  end
end

%w{ distributions incoming options pulls updates }.each do |conf|
  template "#{node[:reprepro][:repo_dir]}/conf/#{conf}" do
    source "#{conf}.erb"
    mode "0644"
    owner "reprepro"
    group "reprepro"
    variables(
      :allow => node[:reprepro][:allow],
      :distributions => node[:reprepro][:distributions],
      :options => node[:reprepro][:options],
      :pulls => node[:reprepro][:pulls],
      :repo_dir => node[:reprepro][:repo_dir],
      :updates => node[:reprepro][:updates]
    )
  end
end

node[:reprepro][:filterlists].each do |name, filterlist|
  template "#{node[:reprepro][:repo_dir]}/conf/#{name}.list" do
    source "filterlist.erb"
    mode "0644"
    owner "reprepro"
    group "reprepro"
    variables(
      :filterlist => filterlist
    )
  end
end

node[:reprepro][:updates].each do |name, update|
  gpg_command = ""

  if update.has_key?('verifyrelease')
    if update.has_key?('keyserver')
      gpg_command = "gpg --keyserver #{update[:keyserver]} --recv-key #{update[:verifyrelease]}"
    end

    if update.has_key?('keyurl')
      gpg_command = "curl #{update[:keyurl]} | gpg --import -"
    end

    if !gpg_command.empty?
      execute "import-#{name}-key" do
        command gpg_command
        user "reprepro"
        environment "GNUPGHOME" => "/home/reprepro/.gnupg"
        not_if "gpg --list-keys #{update[:verifyrelease]}", :user => "reprepro", :environment => { "GNUPGHOME" => "/home/reprepro/.gnupg" }
      end
    end
  end
end

# NOTE: Do not use symbols when indexing into encrypted data bag items
key = Chef::EncryptedDataBagItem.load("reprepro", "signing_key")

execute "import-private-key" do
  command %Q{echo "#{key['private']}" | gpg --allow-secret-key-import --import -}
  user "reprepro"
  environment "GNUPGHOME" => "/home/reprepro/.gnupg"
  returns [ 0, 2 ]
end

execute "import-public-key" do
  command %Q{echo "#{key['public']}" | gpg --import -}
  user "reprepro"
  environment "GNUPGHOME" => "/home/reprepro/.gnupg"
  returns [ 0, 2 ]
end

execute "export-public-key" do
  command %Q{gpg --yes --output "#{node[:reprepro][:repo_dir]}/pubkey.gpg" --export "#{node[:reprepro][:pgp_key]}"}
  user "reprepro"
  environment "GNUPGHOME" => "/home/reprepro/.gnupg"
end

web_app "apt_repo" do
  template "apache.conf.erb"
  docroot node[:reprepro][:repo_dir]
end

if node[:reprepro][:cron][:enabled]
  cron "reprepro-update" do
    minute node[:reprepro][:cron][:minute]
    hour node[:reprepro][:cron][:hour]
    user "reprepro"
    command %W{
      cd "#{node[:reprepro][:repo_dir]}" &&
      reprepro update >> "#{node[:reprepro][:cron][:log]}" 2>&1
    }.join(" ")
  end
end
