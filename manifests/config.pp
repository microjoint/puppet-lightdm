class lightdm::config {

  Augeas {
    context => '/files/etc/lightdm/lightdm.conf',
    lens    => 'puppet.lns',
    incl    => '/etc/lightdm/lightdm.conf',
    notify  => Service['lightdm'],
  }


  if $lightdm::greeter_setup_script {
    augeas { 'lightdm.conf-greeter_setup_script':
      changes => "set SeatDefaults/greeter-setup-script '${lightdm::greeter_setup_script}'",
    }
  }

  if $lightdm::session_setup_script {
    augeas { 'lightdm.conf-session_setup_script':
      changes => "set SeatDefaults/session-setup-script '${lightdm::session_setup_script}'",
    }
  }

  if $lightdm::display_setup_script {
    augeas { 'lightdm.conf-display_setup_script':
      changes => "set SeatDefaults/display-setup-script '${lightdm::display_setup_script}'",
    }
  }

  if $lightdm::autologin_user {
    augeas { 'lightdm.conf-autologin_user':
      changes => "set SeatDefaults/autologin-user '${lightdm::autologin_user}'",
    }
  }


}
