# CHANGELOG for Visual Studio Runtime Cookbook

This file is used to list changes made in each version of vcruntime.

## Unreleased

- Update vc12 and vc14 checksums for new releases of 2013, 2015-2019 and 2015-2022 runtimes [@jhboricua](https://github.com/jhboricua)
- Removed deprecated Chef Delivery job [@jhboricua](https://github.com/jhboricua)
- Removed deprecated Windows 2016 integration jobs [@jhboricua](https://github.com/jhboricua)

## 2.2.10 - *2022-05-01*

- resolved cookstyle error: .delivery/project.toml:2:8 convention: `Style/StringLiterals`
- resolved cookstyle error: .delivery/project.toml:4:10 convention: `Style/StringLiterals`
- resolved cookstyle error: .delivery/project.toml:5:13 convention: `Style/StringLiterals`
- resolved cookstyle error: .delivery/project.toml:6:10 convention: `Style/StringLiterals`
- resolved cookstyle error: .delivery/project.toml:7:9 convention: `Style/StringLiterals`
- resolved cookstyle error: .delivery/project.toml:8:14 convention: `Style/StringLiterals`
- resolved cookstyle error: .delivery/project.toml:9:11 convention: `Style/StringLiterals`

## 2.2.9 - *2021-11-22*

- Remove CircleCI and Dangerfile now the release system is taking care of this for us

## 2.2.8 - *2021-11-22*

- Update vc14 checksum for new releases of 2015-2019 and 2015-2022 runtimes [@jhboricua](https://github.com/jhboricua)

## 2.2.7 - *2021-09-23*

- Update vc14 checksum for new release 14.29.30133.0 [@jhboricua](https://github.com/jhboricua)

## 2.2.6 - *2021-08-31*

- Standardise files with files in sous-chefs/repo-management

## 2.2.5 - *2021-06-23*

- Update vc14 package_name [@derekgroh](https://github.com/derekgroh)

## 2.2.4 - *2021-06-01*

- Standardise files with files in sous-chefs/repo-management

## 2.2.3 - *2021-05-25*

- Update vc14 checksum for '14.29.30037.0' [@jhboricua](https://github.com/jhboricua)

## 2.2.2 - *2021-05-18*

- Update vc6,vc9,vc10 checksums [@derekgroh](https://github.com/derekgroh)

## 2.2.1 - *2021-04-20*

- Update vc14 checksum for '14.28.29914.0' [@derekgroh](https://github.com/derekgroh)

## 2.2.0 - *2021-01-16*

- add norestart options to installers [@derekgroh](https://github.com/derekgroh)
- add returns 1638 to `vc14` [@derekgroh](https://github.com/derekgroh)

## 2.1.0 - *2021-01-15*

- Add GitHub Actions CI/CD. [@derekGroh](https://github.com/derekgroh)
- vc14 updated to use version `14.28.29325.2` [@derekGroh](https://github.com/derekgroh)
- Sous Chefs Adoption
- Update Changelog to Sous Chefs
- Remove Appveyor and update exec kitchen config
- Update vc14 to 14.28.29325.2
- Update to use Sous Chefs GH workflow
- MDL Fixes

## 2.0.0 (2020-08-06)

- Correct vc10 and vc12 name properties - [@derekgroh](https://github.com/derekgroh)
- Correct vc9 download links - [@derekgroh](https://github.com/derekgroh)
- consolidate vc15 recipe into vc14 to match Microsoft package version, this allows the `windows_package` resource to handle upgrades without additional logic - [@derekgroh](https://github.com/derekgroh)
- add Inspec testing - [@derekgroh](https://github.com/derekgroh)

## 1.2.1 (2019-08-28)

- Remove recipe descriptions from metadata.rb - [@tas50](https://github.com/tas50)
- Enable all foodcritic rules on this repo - [@tas50](https://github.com/tas50)
- Remove the gating around chef_version in metadata.rb - [@tas50](https://github.com/tas50)
- Remove the empty default attributes file - [@tas50](https://github.com/tas50)
- Simplify windows platform checks - [@tas50](https://github.com/tas50)
- Remove old authors from the readme - [@tas50](https://github.com/tas50)
- Don't treat return code 3010 as a failure - [@tas50](https://github.com/tas50)
- Remove old long_description metadata - [@tas50](https://github.com/tas50)

## 1.2.0 (2018-07-10)

- Remove stove gem from the Gemfile
- Update VC15 to latest version
- Remove appveyor testing for VC14 since we can't test both VC14 and VC15

## 1.1.1 (2017-08-28)

- Fixed bug where download happens on every run due to same name #11
- Fixed issue where VCRuntime 2017 is in-place upgrade of 2015 & cannot be installed together #15

## 1.1.0 (2017-07-31)

- Add VC15

## 1.0.3 (2017-05-01)

- Update VC12 version information.

## 1.0.2 (2017-03-08)

- Add integration testing on Appveyer and remove Travis CI. Swap the readme badges

## 1.0.1 (2017-03-02)

- Update testing and documentation boilerplate
- Test with Local Delivery instead of Rake
- Add basic Chefspec testing of a converge
- Add Travis Badge to the readme

## 1.0.0

- Converted to use new package resource instead of deprecated windows_package handler. This requires Chef 12.6 or later to use this cookbook now
- Added VS 2013 Runtime
- Added VS 2015 Runtime
- Added VS 2005 Runtime
- install 32 bit by default on 64 bit systems
- Updated recipes to only run on Windows
- Fixed bug with names not matching registry causing install to run every time client ran
- Removed obsolete provides from the metadata file
- Removed forgotten Debug puts
- fixed typos and incorrect naming of VC versions
- Added Test Kitchen config

## 0.2.0

- Refactor to allow the installation of older versions of the Visual C++ Runtime.
- Normalize top-level attribute namespace to 'vcruntime'

## 0.1.6

- Added VS 2012 Runtime

## 0.1.0

- Initial release of vcruntime
