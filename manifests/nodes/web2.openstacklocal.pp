node 'web2.openstacklocal' {

include nginx,ntp

cron { "puppet":
  ensure  => presente,
  command => "/usr/local/bin/pull-updates",
  user    => 'git',
  minute    => '*/5',
}

}
