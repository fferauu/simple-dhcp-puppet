define dhcp::host (
  $ip,
  $mac,
) {

  concat::fragment { $title :
    target  => '/etc/dhcp/dhcpd.conf',
    content => epp('dhcp/host.epp',{
      host => $title,
      ip   => $ip,
      mac  => $mac,
    }),
  }
}
