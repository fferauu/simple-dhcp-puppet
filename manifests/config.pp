class dhcp::config (
) {
  concat { '/etc/dhcp/dhcpd.conf' :
    ensure => 'present',
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    notify => Class['dhcp::service'],
  }
}
