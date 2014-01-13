class kibana::redhat::service {

  require kibana::redhat::config

  $ensure = $kibana::start ? {true    => running, default => stopped}

  service {
    "kibana2":
      ensure => $ensure,
      enable => $kibana::enable;
  }

}

