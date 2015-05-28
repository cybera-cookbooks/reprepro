default[:reprepro][:distributions]['precise-production'] = {
  :origin => "lmc-packages.cybera.ca",
  :label => "Ubuntu",
  :description => "LMC production packages for Ubuntu 12.04",
  :components => [ "main", "restricted", "universe", "multiverse" ],
  :architectures => [ "amd64", "i386" ],
  :pull => [ "precise-testing" ]
}

default[:reprepro][:distributions]['precise-production-updates'] = {
  :origin => "lmc-packages.cybera.ca",
  :label => "Ubuntu",
  :description => "LMC production packages for Ubuntu 12.04",
  :components => [ "main", "restricted", "universe", "multiverse" ],
  :architectures => [ "amd64", "i386" ],
  :pull => [ "precise-testing-updates" ]
}

default[:reprepro][:distributions]['precise-production-security'] = {
  :origin => "lmc-packages.cybera.ca",
  :label => "Ubuntu",
  :description => "LMC production packages for Ubuntu 12.04",
  :components => [ "main", "restricted", "universe", "multiverse" ],
  :architectures => [ "amd64", "i386" ],
  :pull => [ "precise-testing-security" ]
}

default[:reprepro][:distributions]['precise-production-cybera'] = {
  :origin => "lmc-packages.cybera.ca",
  :label => "Ubuntu",
  :description => "LMC production packages for Ubuntu 12.04",
  :components => [ "main" ],
  :architectures => [ "amd64", "i386" ],
  :pull => [ "precise-testing-cybera" ]
}

default[:reprepro][:distributions]['precise-testing'] = {
  :origin => "lmc-packages.cybera.ca",
  :label => "Ubuntu",
  :description => "LMC testing packages for Ubuntu 12.04",
  :components => [ "main", "restricted", "universe", "multiverse" ],
  :architectures => [ "amd64", "i386" ],
  :update => [ "precise", "precise-glusterfs" ]
}

default[:reprepro][:distributions]['precise-testing-updates'] = {
  :origin => "lmc-packages.cybera.ca",
  :label => "Ubuntu",
  :description => "LMC testing packages for Ubuntu 12.04",
  :components => [ "main", "restricted", "universe", "multiverse" ],
  :architectures => [ "amd64", "i386" ],
  :update => [ "precise-updates" ]
}

default[:reprepro][:distributions]['precise-testing-security'] = {
  :origin => "lmc-packages.cybera.ca",
  :label => "Ubuntu",
  :description => "LMC testing packages for Ubuntu 12.04",
  :components => [ "main", "restricted", "universe", "multiverse" ],
  :architectures => [ "amd64", "i386" ],
  :update => [ "precise-security" ]
}

default[:reprepro][:distributions]['precise-testing-cybera'] = {
  :origin => "lmc-packages.cybera.ca",
  :label => "Ubuntu",
  :description => "LMC testing packages for Ubuntu 12.04",
  :components => [ "main" ],
  :architectures => [ "amd64", "i386" ],
}

default[:reprepro][:distributions]['trusty-production'] = {
  :origin => "lmc-packages.cybera.ca",
  :label => "Ubuntu",
  :description => "LMC production packages for Ubuntu 14.04",
  :components => [ "main", "restricted", "universe", "multiverse" ],
  :architectures => [ "amd64", "i386" ],
  :pull => [ "trusty-testing" ]
}

default[:reprepro][:distributions]['trusty-production-updates'] = {
  :origin => "lmc-packages.cybera.ca",
  :label => "Ubuntu",
  :description => "LMC production packages for Ubuntu 14.04",
  :components => [ "main", "restricted", "universe", "multiverse" ],
  :architectures => [ "amd64", "i386" ],
  :pull => [ "trusty-testing-updates" ]
}

default[:reprepro][:distributions]['trusty-production-security'] = {
  :origin => "lmc-packages.cybera.ca",
  :label => "Ubuntu",
  :description => "LMC production packages for Ubuntu 14.04",
  :components => [ "main", "restricted", "universe", "multiverse" ],
  :architectures => [ "amd64", "i386" ],
  :pull => [ "trusty-testing-security" ]
}

default[:reprepro][:distributions]['trusty-production-cybera'] = {
  :origin => "lmc-packages.cybera.ca",
  :label => "Ubuntu",
  :description => "LMC production packages for Ubuntu 14.04",
  :components => [ "main" ],
  :architectures => [ "amd64", "i386" ],
  :pull => [ "trusty-testing-cybera" ]
}

default[:reprepro][:distributions]['trusty-testing'] = {
  :origin => "lmc-packages.cybera.ca",
  :label => "Ubuntu",
  :description => "LMC testing packages for Ubuntu 14.04",
  :components => [ "main", "restricted", "universe", "multiverse" ],
  :architectures => [ "amd64", "i386" ],
  :update => [ "trusty", "trusty-glusterfs" ]
}

default[:reprepro][:distributions]['trusty-testing-updates'] = {
  :origin => "lmc-packages.cybera.ca",
  :label => "Ubuntu",
  :description => "LMC testing packages for Ubuntu 14.04",
  :components => [ "main", "restricted", "universe", "multiverse" ],
  :architectures => [ "amd64", "i386" ],
  :update => [ "trusty-updates" ]
}

default[:reprepro][:distributions]['trusty-testing-security'] = {
  :origin => "lmc-packages.cybera.ca",
  :label => "Ubuntu",
  :description => "LMC testing packages for Ubuntu 14.04",
  :components => [ "main", "restricted", "universe", "multiverse" ],
  :architectures => [ "amd64", "i386" ],
  :update => [ "trusty-security" ]
}

default[:reprepro][:distributions]['trusty-testing-cybera'] = {
  :origin => "lmc-packages.cybera.ca",
  :label => "Ubuntu",
  :description => "LMC testing packages for Ubuntu 14.04",
  :components => [ "main" ],
  :architectures => [ "amd64", "i386" ],
  :update => [ "trusty-postgresql" ]
}
