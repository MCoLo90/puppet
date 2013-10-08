node 'web1.openstacklocal' {

include nginx,ntp

$servers_real = debian

cron { "puppet":
  ensure  => present,
  command => "/usr/local/bin/pull-updates",
  user    => 'git',
  minute  => '*/5'
}

class { 'corosync':
    enable_secauth    => true,
    bind_address      => '192.168.170.5',
    multicast_address => '239.255.1.1',
  }


}
