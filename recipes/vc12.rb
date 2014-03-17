#
# Cookbook Name:: vcruntime
# Recipe:: vc12
# Installs runtime for VS 2012

include_recipe "windows"

case node['kernel']['machine']
when "x86_64"
  windows_package 'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.61030' do
    source node['vc12']['x64']['tools']['pkg']['windows']['url']
    installer_type :custom
    options '/q'
  end
when /i[3-6]86/
  windows_package 'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.61030' do
    source node['vc12']['x86']['tools']['pkg']['windows']['url']
    installer_type :custom
    options '/q'
  end
end
  