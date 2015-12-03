#
class lightdm::service inherits lightdm {

  service{ 'lightdm':
    ensure     => 'running',
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
    require    => Package['lightdm'],
  }

}
