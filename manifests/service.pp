class lightdm::service {

  service{ 'lightdm':
    ensure     => 'running',
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
    require    => Package['lightdm'],
  }

}
