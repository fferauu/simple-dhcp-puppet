#### Table of Contents

1. [Description](#description)
1. [Usage](#usage)

## Description

My first Puppet module. With this module you can make basic DHCP configuration.

## Usage

include dhcp

dhcp::subnet { '192.168.10.0' :
  netmask     => '255.255.255.0',
   begin_range => '192.168.10.25',
   end_range   => '192.168.10.50',
   router      => '192.168.10.1',
   broadcast   => '192.168.10.255',
}

dhcp::host { 'example' :
  ip  => '192.168.10.75',
  mac => '11:11:11:11:11:11',
}
