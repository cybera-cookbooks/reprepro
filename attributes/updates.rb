default['reprepro']['updates']['precise'] = {
  'method' => "http://us.archive.ubuntu.com/ubuntu",
  'suite' => "precise",
  'components' => [ "main", "restricted", "universe", "multiverse" ],
  'architectures' => [ "amd64", "i386" ],
  'verifyrelease' => "437D05B5",
  'keyserver' => "keyserver.ubuntu.com"
}

default['reprepro']['updates']['precise-updates'] = {
  'method' => "http://us.archive.ubuntu.com/ubuntu",
  'suite' => "precise-updates",
  'components' => [ "main", "restricted", "universe", "multiverse" ],
  'architectures' => [ "amd64", "i386" ],
  'verifyrelease' => "437D05B5",
  'keyserver' => "keyserver.ubuntu.com"
}

default['reprepro']['updates']['precise-security'] = {
  'method' => "http://us.archive.ubuntu.com/ubuntu",
  'suite' => "precise-security",
  'components' => [ "main", "restricted", "universe", "multiverse" ],
  'architectures' => [ "amd64", "i386" ],
  'verifyrelease' => "437D05B5",
  'keyserver' => "keyserver.ubuntu.com"
}

default['reprepro']['updates']['precise-glusterfs'] = {
  'method' => "http://ppa.launchpad.net/semiosis/ubuntu-glusterfs-3.3/ubuntu",
  'suite' => "precise",
  'components' => [ "main" ],
  'architectures' => [ "amd64", "i386" ],
  'verifyrelease' => "774BAC4D",
  'keyserver' => "keyserver.ubuntu.com"
}

default['reprepro']['updates']['trusty'] = {
  'method' => "http://us.archive.ubuntu.com/ubuntu",
  'suite' => "trusty",
  'components' => [ "main", "restricted", "universe", "multiverse" ],
  'architectures' => [ "amd64", "i386" ],
  'verifyrelease' => "437D05B5",
  'keyserver' => "keyserver.ubuntu.com"
}

default['reprepro']['updates']['trusty-updates'] = {
  'method' => "http://us.archive.ubuntu.com/ubuntu",
  'suite' => "trusty-updates",
  'components' => [ "main", "restricted", "universe", "multiverse" ],
  'architectures' => [ "amd64", "i386" ],
  'verifyrelease' => "437D05B5",
  'keyserver' => "keyserver.ubuntu.com"
}

default['reprepro']['updates']['trusty-security'] = {
  'method' => "http://us.archive.ubuntu.com/ubuntu",
  'suite' => "trusty-security",
  'components' => [ "main", "restricted", "universe", "multiverse" ],
  'architectures' => [ "amd64", "i386" ],
  'verifyrelease' => "437D05B5",
  'keyserver' => "keyserver.ubuntu.com"
}

default['reprepro']['updates']['trusty-glusterfs'] = {
  'method' => "http://ppa.launchpad.net/semiosis/ubuntu-glusterfs-3.5/ubuntu",
  'suite' => "trusty",
  'components' => [ "main" ],
  'architectures' => [ "amd64", "i386" ],
  'verifyrelease' => "774BAC4D",
  'keyserver' => "keyserver.ubuntu.com"
}

default['reprepro']['updates']['trusty-postgresql'] = {
  'method' => "http://apt.postgresql.org/pub/repos/apt",
  'suite' => "trusty-pgdg",
  'components' => "main",
  'architectures' => [ "amd64", "i386" ],
  'verifyrelease' => "ACCC4CF8",
  'filterlist' => {
    'default_action' => "deinstall",
    'name' => "trusty-postgresql"
  }
}
