class dhcp {
  include dhcp::install
  include dhcp::service
  include dhcp::config
}
