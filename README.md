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

Options
-------

The key/value pairs are used to populate `conf/options`. See the `CONFIG FILES` section of the reprepro man page for more details.

Distributions
-------------

A list of distributions that will make up the repository. Below is an example that shows all available options:

```json
"my-distribution": {
    "origin": "my.domain.com",
    "label": "mylabel",
    "description": "Description of the distribution",
    "components": [
        "main",
        "restricted",
        "universe",
        "multiverse"
    ],
    "architectures": [
        "amd64",
        "i386"                                                                  
    ],
    "pull": [
        "my-pull-rule"
    ],
    "update": [
        "my-update-rule"
    ]
}
```

The `update` and `pull` attributes are covered in more detail in their own sections and they are the only two optional attributes. However, `origin`, `label` and `description` are also all optional in reprepro, but just not in the cookbook at this time.

Updates
-------

Rules for updating distributions with packages from external repositories. This is an example definition for updating from the official Trusty repositories with an example of how to use a `filterlist`:

```json
"trusty": {
  "method": "http://us.archive.ubuntu.com/ubuntu",
  "suite": "trusty",
  "components": [
    "main",
    "restricted",
    "universe",
    "multiverse"
  ],
  "architectures": [
    "amd64",
    "i386"
  ],
  "filterlist": {
    "default_action": "install",
    "name": "my-filterlist"
  },
  "verifyrelease": "437D05B5",
  "keyserver": "keyserver.ubuntu.com"
}
```

Everything after architectures is optional. The `filterlist` attribute is covered in it's own section. The key used for `verifyrelease` must either be manually added to the keyring or will be automatically imported if the `keyserver` is provided.

Pulls
-----

Rules for pulling packages into a distribution from another distribution within reprepro. This is an example that could be used to pull packages from an internal mirror of the official Trusty repositories:

```json
"trusty": {
  "from": "trusty",
  "components": [
    "main",
    "restricted",
    "universe",
    "multiverse"
  ]
}
```

Filterlists
-----------

Used in conjunction with updates and pulls rules to control which packages will be imported. Below is an example that would prevent two Apache PHP modules from being imported:

```json
"trusty-php": {
  "libapache2-mod-php5": "deinstall",
  "libapache2-mod-php5filter": "deinstall"
}  
```

See the reprepro manpage for all of the possible actions.

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
