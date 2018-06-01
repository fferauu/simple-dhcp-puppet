define dhcp::subnet (
  Stdlib::IP::Address::V4 $netmask,
  Stdlib::IP::Address::V4 $begin_range,
  Stdlib::IP::Address::V4 $end_range,
  Stdlib::IP::Address::V4 $router,
  Stdlib::IP::Address::V4 $broadcast,
  $dns                    = [ '8.8.8.8', '8.8.4.4' ],
  $domain                 = undef,
  Integer                 $default_lease_time = 600,
  Integer                 $max_lease_time = 7200,
) {

  concat::fragment { $title :
    target  => '/etc/dhcp/dhcpd.conf',
    content => epp('dhcp/subnet.epp',{
      subnet             => $title,
      netmask            => $netmask,
      begin_range        => $begin_range,
      end_range          => $end_range,
      router             => $router,
      broadcast          => $broadcast,
      dns                => $dns,
      domain             => $domain,
      default_lease_time => $default_lease_time,
      max_lease_time     => $max_lease_time,
    }),
    order   => '01',
  }
}
