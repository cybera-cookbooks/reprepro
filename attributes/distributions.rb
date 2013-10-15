default['reprepro']['distributions']['precise-production'] = {
  'label' => "Ubuntu",
  'description' => "LMC production packages for Ubuntu 12.04",
  'components' => [ "main", "restricted", "universe", "multiverse" ],
  'architectures' => [ "amd64" ],
  'pull' => "precise-testing"
}

default['reprepro']['distributions']['precise-production-updates'] = {
  'label' => "Ubuntu",
  'description' => "LMC production packages for Ubuntu 12.04",
  'components' => [ "main", "restricted", "universe", "multiverse" ],
  'architectures' => [ "amd64" ],
  'pull' => "precise-testing-updates"
}

default['reprepro']['distributions']['precise-production-security'] = {
  'label' => "Ubuntu",
  'description' => "LMC production packages for Ubuntu 12.04",
  'components' => [ "main", "restricted", "universe", "multiverse" ],
  'architectures' => [ "amd64" ],
  'pull' => "precise-testing-security"
}

default['reprepro']['distributions']['precise-testing'] = {
  'label' => "Ubuntu",
  'description' => "LMC testing packages for Ubuntu 12.04",
  'components' => [ "main", "restricted", "universe", "multiverse" ],
  'architectures' => [ "amd64" ],
  'update' => "precise"
}

default['reprepro']['distributions']['precise-testing-updates'] = {
  'label' => "Ubuntu",
  'description' => "LMC testing packages for Ubuntu 12.04",
  'components' => [ "main", "restricted", "universe", "multiverse" ],
  'architectures' => [ "amd64" ],
  'update' => "precise-updates"
}

default['reprepro']['distributions']['precise-testing-security'] = {
  'label' => "Ubuntu",
  'description' => "LMC testing packages for Ubuntu 12.04",
  'components' => [ "main", "restricted", "universe", "multiverse" ],
  'architectures' => [ "amd64" ],
  'update' => "precise-security"
}
