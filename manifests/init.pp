# == Class: lightdm
#
# Full description of class lightdm here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { lightdm:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2014 Your name here, unless otherwise noted.
#
class lightdm (
  $greeter_setup_script = $lightdm::params::greeter_setup_script,
  $session_setup_script = $lightdm::params::session_setup_script,
  $display_setup_script = $lightdm::params::display_setup_script,
  $autologin_user       = $lightdm::params::autologin_user,
  
) inherits lightdm::params {

  class {
    'lightdm::install': ;
    'lightdm::config': ;
    'lightdm::service': ;
  }


}
