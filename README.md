DESCRIPTION
===========

Sets up an APT repository suitable for using the reprepro tool to
manage distributions and components.

See the reprepro documentation for more information about reprepro
itself, including the man(1) page in the package.

* http://mirrorer.alioth.debian.org/

REQUIREMENTS
============

Platform: Debian or Ubuntu.

Requires Chef 0.8.x+, client/server.
to data bag use.

You'll need to generate the PGP key separately and provide the keys
in files.

USAGE
=====

Attributes
----------

* `node['reprepro']['fqdn']` - the fqdn that would go in sources.list
* `node['reprepro']['listen_port']` - listen port for apache
* `node['reprepro']['allow']` - allows configuration for incoming
* `node['reprepro']['private_key']` - file name of private key
* `node['reprepro']['public_key']` - file name of public key
* `node['reprepro']['pgp_email']` - email address of pgp key
* `node['reprepro']['distributions']` - reprepro distributions configuration
* `node['reprepro']['filterlists']` - reprepro filterlists configuration
* `node['reprepro']['options']` - reprepro options configuration
* `node['reprepro']['pulls']` - reprepro pulls configuration
* `node['reprepro']['updates']` - reprepro updates configuration

LICENSE AND AUTHOR
==================

- Author: Cameron Mann (<cameron.mann@cybera.ca>)

Based on the reprepro cookbook created by Joshua Timberman (<joshua@opscode.com>)
and Chris Roberts (<chrisroberts.code@gmail.com>).

Copyright 2013, Opscode, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
