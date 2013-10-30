default['reprepro']['updates']['precise'] = {
  'method' => "http://us.archive.ubuntu.com/ubuntu",
  'suite' => "precise",
  'components' => [ "main", "restricted", "universe", "multiverse" ],
  'architectures' => [ "amd64", "i386" ],
}

default['reprepro']['updates']['precise-updates'] = {
  'method' => "http://us.archive.ubuntu.com/ubuntu",
  'suite' => "precise-updates",
  'components' => [ "main", "restricted", "universe", "multiverse" ],
  'architectures' => [ "amd64", "i386" ],
}

default['reprepro']['updates']['precise-security'] = {
  'method' => "http://us.archive.ubuntu.com/ubuntu",
  'suite' => "precise-security",
  'components' => [ "main", "restricted", "universe", "multiverse" ],
  'architectures' => [ "amd64", "i386" ],
}
