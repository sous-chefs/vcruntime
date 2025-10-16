#
# Author:: Yvo van Doorn (<yvo@chef.io>)
# Cookbook:: vcruntime
# Recipe:: vc6
#
# Copyright:: 2013-2019, Chef Software, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

if platform?('windows')
  case node['kernel']['machine']
  when 'x86_64'
    windows_package node['vcruntime']['vc6']['x64'][node['vcruntime']['vc6']['version']]['name'] do
      checksum node['vcruntime']['vc6']['x64'][node['vcruntime']['vc6']['version']]['sha256sum']
      source node['vcruntime']['vc6']['x64'][node['vcruntime']['vc6']['version']]['url']
      installer_type :custom
      returns [0, 3010]
      remote_file_attributes({
                               path: "#{Chef::Config[:file_cache_path]}\\package\\#{node['vcruntime']['vc6']['x64'][node['vcruntime']['vc6']['version']]['name']} - #{node['vcruntime']['vc6']['version']}.exe",
                               checksum: node['vcruntime']['vc6']['x64'][node['vcruntime']['vc6']['version']]['sha256sum'],
                             })
      options '/q'
    end
    windows_package node['vcruntime']['vc6']['x86'][node['vcruntime']['vc6']['version']]['name'] do
      checksum node['vcruntime']['vc6']['x86'][node['vcruntime']['vc6']['version']]['sha256sum']
      source node['vcruntime']['vc6']['x86'][node['vcruntime']['vc6']['version']]['url']
      installer_type :custom
      returns [0, 3010]
      remote_file_attributes({
                               path: "#{Chef::Config[:file_cache_path]}\\package\\#{node['vcruntime']['vc6']['x86'][node['vcruntime']['vc6']['version']]['name']} - #{node['vcruntime']['vc6']['version']}.exe",
                               checksum: node['vcruntime']['vc6']['x86'][node['vcruntime']['vc6']['version']]['sha256sum'],
                             })
      options '/q'
    end
  when /i[3-6]86/
    windows_package node['vcruntime']['vc6']['x86'][node['vcruntime']['vc6']['version']]['name'] do
      checksum node['vcruntime']['vc6']['x86'][node['vcruntime']['vc6']['version']]['sha256sum']
      source node['vcruntime']['vc6']['x86'][node['vcruntime']['vc6']['version']]['url']
      installer_type :custom
      returns [0, 3010]
      remote_file_attributes({
                               path: "#{Chef::Config[:file_cache_path]}\\package\\#{node['vcruntime']['vc6']['x86'][node['vcruntime']['vc6']['version']]['name']} - #{node['vcruntime']['vc6']['version']}.exe",
                               checksum: node['vcruntime']['vc6']['x86'][node['vcruntime']['vc6']['version']]['sha256sum'],
                             })
      options '/q'
    end
  end
end
