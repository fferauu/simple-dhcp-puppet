class dhcp::service (
  $service_name = $dhcp::params::service
) inherits dhcp::params{

  service { 'dhcp_service':
    ensure  => 'running',
    enable  => true,
    name    => $service_name,
    require => Class['dhcp::install'],
  }
}

