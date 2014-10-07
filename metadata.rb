name              'nagios'
maintainer        'Tim Smith'
maintainer_email  'tsmith84@gmail.com'
license           'Apache 2.0'
description       'Installs and configures Nagios server and the NRPE client'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           '5.2.2'

recipe 'nagios', 'Includes the client recipe.'
recipe 'nagios::client', 'Installs and configures a nrpe client'
recipe 'nagios::server', 'Installs and configures a nagios server'
recipe 'nagios::pagerduty', 'Integrates contacts w/ PagerDuty API'

depends 'apache2', '= 2.0.0'
depends 'build-essential', '= 2.0.6'
depends 'php', '= 1.3.0'
depends 'nginx, '= 1.8.0'
depends 'nginx_simplecgi', '= 0.1.2'

%w{ debian ubuntu redhat centos fedora scientific amazon oracle}.each do |os|
  supports os
end
