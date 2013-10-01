default['reprepro']['distributions']['precise-production']['label'] = "Ubuntu"
default['reprepro']['distributions']['precise-production']['description'] = "LMC production packages for Ubuntu 12.04"
default['reprepro']['distributions']['precise-production']['components'] = [ "main", "restricted", "universe", "multiverse", "cybera" ]
default['reprepro']['distributions']['precise-production']['architectures'] = [ "amd64" ]
default['reprepro']['distributions']['precise-production']['pull'] = "precise-testing"

default['reprepro']['distributions']['precise-testing']['label'] = "Ubuntu"
default['reprepro']['distributions']['precise-testing']['description'] = "LMC testing packages for Ubuntu 12.04"
default['reprepro']['distributions']['precise-testing']['components'] = [ "main", "restricted", "universe", "multiverse", "cybera" ]
default['reprepro']['distributions']['precise-testing']['architectures'] = [ "amd64" ]
default['reprepro']['distributions']['precise-testing']['update'] = "precise"
