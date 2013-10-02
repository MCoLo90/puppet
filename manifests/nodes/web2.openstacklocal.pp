node 'web2.openstacklocal' {

include nginx,ntp

cron { "puppet":
  ensure  => absent,
  command => "pull-updates",
  user    => 'git',
  hour    => '*/1',
}

}
