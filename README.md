DESCRIPTION
===========

Installs and configures reprepro for managing an APT repository behind Apache2. Optionally configures automatic updating of the repository through cron.

* http://mirrorer.alioth.debian.org/

REQUIREMENTS
============

PGP key should be generated and stored in an encrypted data bag, see `test/data_bags/reprepro` for an example.

USAGE
=====

Attributes
----------

* `node['reprepro']['fqdn']` - the fqdn that would go in sources.list
* `node['reprepro']['allow']` - allows configuration for incoming
* `node['reprepro']['pgp_key']` - id of the pgp key in the encrypted data bag
* `node['reprepro']['distributions']` - reprepro distributions configuration
* `node['reprepro']['filterlists']` - reprepro filterlists configuration
* `node['reprepro']['options']` - reprepro options configuration
* `node['reprepro']['pulls']` - reprepro pulls configuration
* `node['reprepro']['updates']` - reprepro updates configuration
* `node['reprepro']['cron']['enabled']` - enable automatic `reprepro update` runs
* `node['reprepro']['cron']['hour']` - hour in normal cron syntax
* `node['reprepro']['cron']['minute']` - minute in normal cron syntax

LICENSE AND AUTHOR
==================

- Author: Cameron Mann (<cameron.mann@cybera.ca>)

Copyright 2014, Cybera, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
