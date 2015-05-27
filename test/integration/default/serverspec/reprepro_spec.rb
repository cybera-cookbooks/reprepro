require 'spec_helper'

describe command('wget -qO- localhost/pubkey.gpg') do
  its(:exit_status) { should eq 0 }
end

describe command('wget -qO- localhost/conf') do
  its(:exit_status) { should eq 8 }
end

describe command('wget -qO- localhost/db') do
  its(:exit_status) { should eq 8 }
end

describe command('wget -qO- localhost/incoming') do
  its(:exit_status) { should eq 8 }
end

describe command('cd /srv/apt && reprepro dumpreferences') do
  its(:exit_status) { should eq 0 }
end
