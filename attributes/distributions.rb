default['reprepro']['distributions']['precise-production'] = {
  'label' => "Ubuntu",
  'description' => "LMC production packages for Ubuntu 12.04",
  'components' => [ "main", "restricted", "universe", "multiverse" ],
  'architectures' => [ "amd64", "i386" ],
  'pull' => [ "precise-testing" ]
}

default['reprepro']['distributions']['precise-production-updates'] = {
  'label' => "Ubuntu",
  'description' => "LMC production packages for Ubuntu 12.04",
  'components' => [ "main", "restricted", "universe", "multiverse" ],
  'architectures' => [ "amd64", "i386" ],
  'pull' => [ "precise-testing-updates" ]
}

default['reprepro']['distributions']['precise-production-security'] = {
  'label' => "Ubuntu",
  'description' => "LMC production packages for Ubuntu 12.04",
  'components' => [ "main", "restricted", "universe", "multiverse" ],
  'architectures' => [ "amd64", "i386" ],
  'pull' => [ "precise-testing-security" ]
}

default['reprepro']['distributions']['precise-production-cybera'] = {
  'label' => "Ubuntu",
  'description' => "LMC production packages for Ubuntu 12.04",
  'components' => [ "main" ],
  'architectures' => [ "amd64", "i386" ],
  'pull' => [ "precise-testing-cybera" ]
}

default['reprepro']['distributions']['precise-testing'] = {
  'label' => "Ubuntu",
  'description' => "LMC testing packages for Ubuntu 12.04",
  'components' => [ "main", "restricted", "universe", "multiverse" ],
  'architectures' => [ "amd64", "i386" ],
  'update' => [ "precise", "precise-glusterfs" ]
}

default['reprepro']['distributions']['precise-testing-updates'] = {
  'label' => "Ubuntu",
  'description' => "LMC testing packages for Ubuntu 12.04",
  'components' => [ "main", "restricted", "universe", "multiverse" ],
  'architectures' => [ "amd64", "i386" ],
  'update' => [ "precise-updates" ]
}

default['reprepro']['distributions']['precise-testing-security'] = {
  'label' => "Ubuntu",
  'description' => "LMC testing packages for Ubuntu 12.04",
  'components' => [ "main", "restricted", "universe", "multiverse" ],
  'architectures' => [ "amd64", "i386" ],
  'update' => [ "precise-security" ]
}

default['reprepro']['distributions']['precise-testing-cybera'] = {
  'label' => "Ubuntu",
  'description' => "LMC testing packages for Ubuntu 12.04",
  'components' => [ "main" ],
  'architectures' => [ "amd64", "i386" ],
}

default['reprepro']['distributions']['trusty-production'] = {
  'label' => "Ubuntu",
  'description' => "LMC production packages for Ubuntu 14.04",
  'components' => [ "main", "restricted", "universe", "multiverse" ],
  'architectures' => [ "amd64", "i386" ],
  'pull' => [ "trusty-testing" ]
}

default['reprepro']['distributions']['trusty-production-updates'] = {
  'label' => "Ubuntu",
  'description' => "LMC production packages for Ubuntu 14.04",
  'components' => [ "main", "restricted", "universe", "multiverse" ],
  'architectures' => [ "amd64", "i386" ],
  'pull' => [ "trusty-testing-updates" ]
}

default['reprepro']['distributions']['trusty-production-security'] = {
  'label' => "Ubuntu",
  'description' => "LMC production packages for Ubuntu 14.04",
  'components' => [ "main", "restricted", "universe", "multiverse" ],
  'architectures' => [ "amd64", "i386" ],
  'pull' => [ "trusty-testing-security" ]
}

default['reprepro']['distributions']['trusty-production-cybera'] = {
  'label' => "Ubuntu",
  'description' => "LMC production packages for Ubuntu 14.04",
  'components' => [ "main" ],
  'architectures' => [ "amd64", "i386" ],
  'pull' => [ "trusty-testing-cybera" ]
}

default['reprepro']['distributions']['trusty-testing'] = {
  'label' => "Ubuntu",
  'description' => "LMC testing packages for Ubuntu 14.04",
  'components' => [ "main", "restricted", "universe", "multiverse" ],
  'architectures' => [ "amd64", "i386" ],
  'update' => [ "trusty", "precise-glusterfs" ]
}

default['reprepro']['distributions']['trusty-testing-updates'] = {
  'label' => "Ubuntu",
  'description' => "LMC testing packages for Ubuntu 14.04",
  'components' => [ "main", "restricted", "universe", "multiverse" ],
  'architectures' => [ "amd64", "i386" ],
  'update' => [ "trusty-updates" ]
}

default['reprepro']['distributions']['trusty-testing-security'] = {
  'label' => "Ubuntu",
  'description' => "LMC testing packages for Ubuntu 14.04",
  'components' => [ "main", "restricted", "universe", "multiverse" ],
  'architectures' => [ "amd64", "i386" ],
  'update' => [ "trusty-security" ]
}

default['reprepro']['distributions']['trusty-testing-cybera'] = {
  'label' => "Ubuntu",
  'description' => "LMC testing packages for Ubuntu 14.04",
  'components' => [ "main" ],
  'architectures' => [ "amd64", "i386" ],
  'update' => [ "trusty-postgresql" ]
}
