define dhcp::host (
  Stdlib::IP::Address::V4 $ip,
  Stdlib::MAC            $mac,
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
