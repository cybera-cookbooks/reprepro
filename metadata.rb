name             "reprepro"
maintainer       "Cybera"
maintainer_email "devops@cybera.ca"
license          "Apache 2.0"
description      "Installs and configures reprepro"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"

depends "apache2"
depends "apt"
depends "cron"

recipe "reprepro", "Installs and configures reprepro"
