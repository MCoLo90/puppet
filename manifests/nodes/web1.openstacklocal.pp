node 'web1.openstacklocal' {

include nginx, ntp, corosync

$servers_real = debian

cron { "puppet":
  ensure  => present,
  command => "/usr/local/bin/pull-updates",
  user    => 'git',
  minute  => '*/5'
}

class { 'corosync':
    enable_secauth    => false,
    bind_address      => '192.168.170.5',
    multicast_address => '239.1.1.2',
  }


}
