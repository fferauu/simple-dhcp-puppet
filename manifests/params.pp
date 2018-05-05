class dhcp::params {
  case $facts['os']['family'] {  
    'RedHat' : {
      $service = 'dhcpd'
      $package = 'dhcp'
    }
    'Debian' : {
      $service = 'isc-dhcp-server'
      $package = 'isc-dhcp-server'
    }
    default : {
      fail("Your OS is not supported")
    }
  }
}
