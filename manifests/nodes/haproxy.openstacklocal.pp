node 'haproxy.openstacklocal' {

class { 'haproxy': }

haproxy::backend { 'haproxy-be':
    options   => {
      'option'  => [
      ],
      'balance' => 'roundrobin'
    },
  }

haproxy::balancermember { 'haproxy-be':
    listening_service => 'web',
    ports             => '80',
    server_names      => ['web1', 'web2'],
    ipaddresses       => ['192.168.170.5', '192.168.170.6'],
  }

haproxy::frontend { 'haproxy-fe':
    ipaddress => '*',
    ports     => '80',
    mode      => 'tcp',
    default_backend => 'haproxy-be',
    options   => {
      'option'  => [
      ],
    },
  }
}
