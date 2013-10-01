default['reprepro']['distributions']['precise-production'] = {
  'label' => "Ubuntu",
  'description' => "LMC production packages for Ubuntu 12.04",
  'components' => [ "main", "restricted", "universe", "multiverse", "cybera" ],
  'architectures' => [ "amd64" ],
  'pull' => "precise-testing"
}

default['reprepro']['distributions']['precise-testing'] = {
  'label' => "Ubuntu",
  'description' => "LMC testing packages for Ubuntu 12.04",
  'components' => [ "main", "restricted", "universe", "multiverse", "cybera" ],
  'architectures' => [ "amd64" ],
  'update' => "precise"
}
