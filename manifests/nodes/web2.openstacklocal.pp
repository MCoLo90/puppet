node 'web2.openstacklocal' {

include nginx,ntp

cron { "puppet":
  ensure  => present,
  command => "/usr/local/bin/pull-updates",
  user    => 'root',
  minute    => '*/5',
}

}
