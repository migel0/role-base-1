Role Name
=========
role-base

Description
------------
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


Dependencies
------------


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
