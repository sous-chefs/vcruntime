# CHANGELOG for Visual Studio Runtime Cookbook

This file is used to list changes made in each version of vcruntime.

## 1.0.0:

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

## 0.2.0:

- Refactor to allow the installation of older versions of the Visual C++ Runtime.
- Normalize top-level attribute namespace to 'vcruntime'

## 0.1.6:

- Added VS 2012 Runtime

## 0.1.0:

- Initial release of vcruntime
