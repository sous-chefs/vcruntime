# Microsoft Visual C++ Runtime Cookbook

[![Cookbook Version](https://img.shields.io/cookbook/v/vcruntime.svg)](https://supermarket.chef.io/cookbooks/vcruntime)
[![CI State](https://github.com/sous-chefs/vcruntime/workflows/ci/badge.svg)](https://github.com/sous-chefs/vcruntime/actions?query=workflow%3Aci)
[![OpenCollective](https://opencollective.com/sous-chefs/backers/badge.svg)](#backers)
[![OpenCollective](https://opencollective.com/sous-chefs/sponsors/badge.svg)](#sponsors)
[![License](https://img.shields.io/badge/License-Apache%202.0-green.svg)](https://opensource.org/licenses/Apache-2.0)

Installs Microsoft Visual C++ runtime version 6 (2005), 9 (2008), 10 (2010), 11 (2012), 12 (2013), 14 (2015+) on Windows.

## Maintainers

This cookbook is maintained by the Sous Chefs. The Sous Chefs are a community of Chef cookbook maintainers working together to maintain important cookbooks. If you’d like to know more please visit [sous-chefs.org](https://sous-chefs.org/) or come chat with us on the Chef Community Slack in [#sous-chefs](https://chefcommunity.slack.com/messages/C2V7B88SF).

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
| Microsoft Visual C++ 2013 | 12.0.0501<br>12.0.0660.0 <br> 12.0.40664.0|
| Microsoft Visual C++ 2015 | 14.0.3026.0<br>14.0.4123.0<br>14.0.4212.0<br>14.0.24215 |
| Microsoft Visual C++ 2017 | 14.0.25017.0<br>14.4.26429.4 |
| Microsoft Visual C++ 2015-2019 | 14.29.30135.0 <br> 14.29.30139.0 |
| Microsoft Visual C++ 2015-2022 | 14.30.30704.0 <br> 14.31.31103.0 |

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

Include `vcruntime::vc6`, `vcruntime::vc9`, `vcruntime::vc10`, `vcruntime::vc11`, `vcruntime::vc12`, or `vcruntime::vc14` in your node's `run_list` to install specific versions only or `vcruntime::default` for all versions:

```json
{
  "name": "my_node",
  "run_list": [
    "recipe[vcruntime::vc6]"
  ]
}
```

## Contributors

This project exists thanks to all the people who [contribute.](https://opencollective.com/sous-chefs/contributors.svg?width=890&button=false)

### Backers

Thank you to all our backers!

![https://opencollective.com/sous-chefs#backers](https://opencollective.com/sous-chefs/backers.svg?width=600&avatarHeight=40)

### Sponsors

Support this project by becoming a sponsor. Your logo will show up here with a link to your website.

![https://opencollective.com/sous-chefs/sponsor/0/website](https://opencollective.com/sous-chefs/sponsor/0/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/1/website](https://opencollective.com/sous-chefs/sponsor/1/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/2/website](https://opencollective.com/sous-chefs/sponsor/2/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/3/website](https://opencollective.com/sous-chefs/sponsor/3/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/4/website](https://opencollective.com/sous-chefs/sponsor/4/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/5/website](https://opencollective.com/sous-chefs/sponsor/5/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/6/website](https://opencollective.com/sous-chefs/sponsor/6/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/7/website](https://opencollective.com/sous-chefs/sponsor/7/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/8/website](https://opencollective.com/sous-chefs/sponsor/8/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/9/website](https://opencollective.com/sous-chefs/sponsor/9/avatar.svg?avatarHeight=100)
