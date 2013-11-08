name             "reprepro"
maintainer       "Cybera"
maintainer_email "devops@cybera.ca"
license          "Apache 2.0"
description      "Installs/Configures reprepro for an apt repository"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"

# Doesn't make sense to indicate support for non Debian platforms!
supports "ubuntu"
supports "debian"

depends "apache2"
recommends "gpg"
recommends "apt"

recipe "reprepro", "Installs and configures reprepro for an apt repository"
