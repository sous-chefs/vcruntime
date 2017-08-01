name             'vcruntime'
maintainer       'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license          'Apache-2.0'
description      'Installs Microsoft Visual C++ Runtimes'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.1.0'

supports 'windows'

recipe	'vcruntime::vc6', 'Visual C++ 2005 runtimes'
recipe	'vcruntime::vc9', 'Visual C++ 2008 runtimes'
recipe	'vcruntime::vc10', 'Visual C++ 2010 runtimes'
recipe	'vcruntime::vc11', 'Visual C++ 2012 runtimes'
recipe	'vcruntime::vc12', 'Visual C++ 2013 runtimes'
recipe	'vcruntime::vc14', 'Visual C++ 2015 runtimes'

source_url 'https://github.com/chef-windows/vcruntime'
issues_url 'https://github.com/chef-windows/vcruntime/issues'
chef_version '>= 12.6' if respond_to?(:chef_version)
