Microsoft Visual C++ Runtime Cookbook
=====================================

Installs Microsoft Visual C++ runtime version 9, 10 or 12 on Windows.

Requirements
------------

#### Cookbooks

* windows

#### Platforms

* Microsoft Windows 2008 R2
* Microsoft Windows 2012
* Microsoft Windows 2012 R2

Attributes
----------

There are individual attributes within the attributes files for the URL, checksum and package name of each Visual C++ runtime major and minor version.

If you wish to install anything except the latest packages, you may set one of

* ```node['vcruntime']['vc9']['version']```
* ```node['vcruntime']['vc10']['version']```
* ```node['vcruntime']['vc12']['version']```

to the appropriate version.

Usage
-----

Just include `vcruntime::vc9`, `vcruntime::vc10`, or vcruntime::vc12 in your node's `run_list`:

```json
{
  "name": "my_node",
  "run_list": [
    "recipe[vcruntime::vc9]"
  ]
}
```

License and Authors
-------------------

* Author:: Yvo Van Doorn (<yvo@getchef.com>)
* Author:: Dan Robinson (<drobinson@getchef.com>)
* Author:: Julian Dunn (<jdunn@getchef.com>)

* Copyright (C) 2013 Opscode, Inc.
* Copyright (C) 2014 Chef Software, Inc.

```text
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
```
