node 'web2.openstacklocal' {

include nginx,ntp

cron { "puppet":
  ensure  => present,
  command => "pull-updates",
  user    => 'git',
  hour    => '*/1',
}

}
