Role Name
=========

Preparación de una máquina de 4eixos

Requirements
------------

Para emplear este role en tu playbook:

* Crear un requirements.txt
* Introducir la siguiente línea:

```yaml

- src: git+https://github.com/4eixos/playbook-base.git
  version: master

```

y ejecuta:

```sh

ansible-galaxy install -r requirements.yml -p roles/

```

Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

Copyright 2019 4eixos

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
