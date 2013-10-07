node 'haproxy.openstacklocal' {

#include haproxy
  class { 'haproxy': }
  haproxy::listen { 'haproxy':
    ipaddress => $::ipaddress,
    ports     => '80',
  }
}


