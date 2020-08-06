# Microsoft Visual C++ Runtime Cookbook

[![Appveyer status](https://ci.appveyor.com/api/projects/status/0urqqgutu87gvo55?svg=true)](https://ci.appveyor.com/project/ChefWindowsCookbooks/vcruntime) [![Cookbook Version](https://img.shields.io/cookbook/v/vcruntime.svg)](https://supermarket.chef.io/cookbooks/vcruntime)

Installs Microsoft Visual C++ runtime version 6 (2005), 9 (2008), 10 (2010), 11 (2012), 12 (2013), 14 (2015+) on Windows.

## Requirements

### Platforms

- Microsoft Windows 2012
- Microsoft Windows 2012 R2
- Microsoft Windows 2016
- Microsoft Windows 2019

### Chef

- Chef 12.6+

## Attributes

There are individual attributes within the attributes files for the URL, checksum, and package name of each Visual C++ runtime major and minor version.

If you wish to install anything except the latest packages, you may set one of

- `node['vcruntime']['vc6']['version']`
- `node['vcruntime']['vc9']['version']`
- `node['vcruntime']['vc10']['version']`
- `node['vcruntime']['vc11']['version']`
- `node['vcruntime']['vc12']['version']`
- `node['vcruntime']['vc14']['version']`

to the appropriate version.

It will install 32 bit version alongside 64bit version on 64bit systems.

### Microsoft Versioning

As of cookbook version `2.0.0`, the version of packages match the version value in `Details` on the installer, to facilitate matching for Inspec tests.

Versions in the same recipe replace prior versions except for Microsoft Visual C++ 2008.

| Name | Version |
| --- | --- |
| Microsoft Visual C++ 2005 | 8.0.61000 |
| Microsoft Visual C++ 2008 | 9.0.1022<br>9.0.30729.6161 |
| Microsoft Visual C++ 2010 | 10.0.0319<br>10.0.0219 |
| Microsoft Visual C++ 2012 | 11.0.0727.1<br>11.0.1106.1<br>11.0.0610.1<br>11.0.1030.0 |
| Microsoft Visual C++ 2013 | 12.0.0501<br>12.0.0660.0 |
| Microsoft Visual C++ 2015 | 14.0.3026.0<br>14.0.4123.0<br>14.0.4212.0<br>14.0.24215 |
| Microsoft Visual C++ 2017 | 14.0.25017.0<br>14.4.26429.4 |
| Microsoft Visual C++ 2015-2019 | 14.27.29016.0 |

## Usage

Include the default recipe to install all supported versions:

```json
{
  "name": "my_node",
  "run_list": [
    "recipe[vcruntime]"
  ]
}
```

Include `vcruntime::vc6`, `vcruntime::vc9`, `vcruntime::vc10`, `vcruntime::vc11`, `vcruntime::vc12`, or `vcruntime::vc14` in your node's `run_list` to install specific versions only:

```json
{
  "name": "my_node",
  "run_list": [
    "recipe[vcruntime::vc6]"
  ]
}
```

## License

**Copyright:** 2013-2019, Chef Software, Inc.

```
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
