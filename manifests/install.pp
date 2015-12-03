#
class lightdm::install inherits lightdm {

  package { 'lightdm':
    ensure => 'present',
  }

}
