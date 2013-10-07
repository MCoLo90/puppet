node 'haproxy.openstacklocal' {

#include haproxy
  class { 'haproxy': }
  haproxy::listen { 'haproxy':
    ipaddress => $::ipaddress,
    ports     => '80',
  }

haproxy::backend { 'web1':
    options   => {
      'option'  => [
        'tcplog',
        'ssl-hello-chk'
      ],
      'balance' => 'roundrobin'
    },
  }

}


