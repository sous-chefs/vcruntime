# CHANGELOG for Visual Studio Runtime Cookbook

This file is used to list changes made in each version of vcruntime.

## 1.0.0:

* Updated changelog
* removed provides (obsolete) & ran rubocop/cookstyle on cookbook
* Converted to use new package handler instead of deprecated windows_package handler.
* Added case to run only on windows.
* removed Debug puts forgotten.
* fixed bug with names not matching registry causing install to run everytime client ran.
* install 32 bit by default on 64 bit systems
* fixed typos and incorrect naming of VC versions
* Added VS 2013 Runtime
* Added VS 2015 Runtime
* Added VS 2005 Runtime

## 0.2.0:

* Refactor to allow the installation of older versions of the Visual C++ Runtime.
* Normalize top-level attribute namespace to 'vcruntime'

## 0.1.6:

* Added VS 2012 Runtime

## 0.1.0:

* Initial release of vcruntime
