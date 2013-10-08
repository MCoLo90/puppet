node 'web2.openstacklocal' {

include nginx,ntp

cron { "puppet":
  ensure  => present,
  command => "/usr/local/bin/pull-updates",
  user    => 'git',
  minute    => '*/5',
}

class { 'corosync':
    enable_secauth    => true,
    bind_address      => '192.168.170.6',
    multicast_address => '239.255.1.1',
  }

}
