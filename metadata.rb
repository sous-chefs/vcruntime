name             'vcruntime'
maintainer       'Yvo van Doorn'
maintainer_email 'yvo@chef.io'
license          'Apache 2.0'
description      'Installs Microsoft Visual C++ Runtimes'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.16'

%w( windows ).each do |os|
  supports os
end

recipe	'vcruntime::vc6', 'Visual C++ 2005 runtimes'
recipe	'vcruntime::vc9', 'Visual C++ 2008 runtimes'
recipe	'vcruntime::vc10', 'Visual C++ 2010 runtimes'
recipe	'vcruntime::vc11', 'Visual C++ 2012 runtimes'
recipe	'vcruntime::vc12', 'Visual C++ 2013 runtimes'
recipe	'vcruntime::vc14', 'Visual C++ 2015 runtimes'

source_url 'https://github.com/chef-windows/vcruntime' if respond_to?(:source_url)
issues_url 'https://github.com/chef-windows/vcruntime/issues' if respond_to?(:issues_url)
