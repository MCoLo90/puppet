node 'web1.openstacklocal' {

include nginx, ntp

$servers_real = debian

cron { "puppet":
  ensure  => present,
  command => "/usr/local/bin/pull-updates",
  user    => 'git',
  minute  => '*/5'
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
