class dhcp::config (
) {
  concat { '/etc/dhcp/dhcpd.conf' :
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    ensure => 'present',
    notify => Class['dhcp::service'],
  }
}
