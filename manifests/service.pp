class ntp::service(
  String $service_name        = $ntp::service_name,
  Boolean $service_enabled    = $ntp::service_enabled,
  String $service_ensure      = $ntp::service_ensure,
  Boolean $service_hasstatus  = $ntp::service_hasstatus,
  Boolean $service_hasrestart = $ntp::service_hasrestart,
) {

  service { 'ntp':
    ensure     => $service_ensure,
    enabled    => $service_enabled,
    name       => $service_name,
    hasstatus  => $service_hasstatus,
    hasrestart => $service_hasrestart,
  }
}
