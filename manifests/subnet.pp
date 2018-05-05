define dhcp::subnet (
  $netmask,
  $begin_range,
  $end_range,
  $router,
  $broadcast,
  $dns = [ '8.8.8.8', '8.8.4.4' ],
) {
  $subnet = $title

  concat::fragment { 'subnet' :
    target  => '/etc/dhcp/dhcpd.conf',
    content => epp('dhcp/subnet.epp',{
      subnet      => $subnet,
      netmask     => $netmask,
      begin_range => $begin_range,
      end_range   => $end_range,
      router      => $router,
      broadcast   => $broadcast,
      dns         => $dns,
    }),
    order   => '01',
 }
}
