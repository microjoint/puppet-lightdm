#
class lightdm::config inherits lightdm {

  file{'/etc/lightdm/lightdm.conf':
    ensure  => file,
    content => template('lightdm/lightdm.conf.erb')
  }

}
