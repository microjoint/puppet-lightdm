#
class lightdm::config {

  file{'/etc/lightdm/lightdm.conf':
    ensure  => file,
    content => template('lightdm/lightdm.conf.erb')
  }

}
