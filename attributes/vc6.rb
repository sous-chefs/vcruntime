#
# Author:: Julian C. Dunn (<jdunn@chef.io>)
# Cookbook:: vcruntime
# Attributes:: vc6
# Copyright:: 2014-2017, Chef Software, Inc.
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

default['vcruntime']['vc6']['x86']['6.0.2900.2180']['url']       = 'https://download.microsoft.com/download/8/B/4/8B42259F-5D70-43F4-AC2E-4B208FD8D66A/vcredist_x86.EXE'
default['vcruntime']['vc6']['x86']['6.0.2900.2180']['sha256sum'] = '4ee4da0fe62d5fa1b5e80c6e6d88a4a2f8b3b140c35da51053d0d7b72a381d29'
default['vcruntime']['vc6']['x86']['6.0.2900.2180']['name']      = 'Microsoft Visual C++ 2005 Redistributable'
default['vcruntime']['vc6']['x64']['6.0.2900.2180']['url']       = 'https://download.microsoft.com/download/8/B/4/8B42259F-5D70-43F4-AC2E-4B208FD8D66A/vcredist_x64.EXE'
default['vcruntime']['vc6']['x64']['6.0.2900.2180']['sha256sum'] = '0551a61c85b718e1fa015b0c3e3f4c4eea0637055536c00e7969286b4fa663e0'
default['vcruntime']['vc6']['x64']['6.0.2900.2180']['name']      = 'Microsoft Visual C++ 2005 Redistributable (x64)'

default['vcruntime']['vc6']['version'] = '6.0.2900.2180'
