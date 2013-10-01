default['reprepro']['updates']['precise'] = {
  'method' => "http://us.archive.ubuntu.com/ubuntu",
  'suite' => "precise",
  'components' => [ "main", "restricted", "universe", "multiverse" ],
  'architectures' => [ "amd64" ],
  'filterlist' => {
    'default_action' => "deinstall",
    'package_list' => "precise.list"
  }
}
