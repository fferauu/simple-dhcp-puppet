class dhcp::install (
  $package = $dhcp::params::package,
) inherits dhcp::params {

  package { $package :
    ensure => 'installed',
  }
}
