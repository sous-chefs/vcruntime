name             'vcruntime'
maintainer       'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license          'Apache-2.0'
description      'Installs Microsoft Visual C++ Runtimes'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.2.0'

supports 'windows'

source_url 'https://github.com/chef-windows/vcruntime'
issues_url 'https://github.com/chef-windows/vcruntime/issues'
chef_version '>= 12.6'
