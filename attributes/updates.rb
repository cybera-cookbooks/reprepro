default['reprepro']['updates']['precise']['method'] = "http://us.archive.ubuntu.com/ubuntu"
default['reprepro']['updates']['precise']['suite'] = "precise"
default['reprepro']['updates']['precise']['components'] = [ "main", "restricted", "universe", "multiverse" ]
default['reprepro']['updates']['precise']['architectures'] = [ "amd64" ]
default['reprepro']['updates']['precise']['filterlist']['default_action'] = "deinstall"
default['reprepro']['updates']['precise']['filterlist']['package_list'] = "precise.list"
