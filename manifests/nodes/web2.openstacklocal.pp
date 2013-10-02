node 'web2.openstacklocal' {

include nginx

cron { "puppet":
  ensure  => present,
  command => "pull-updates",
  user    => 'git',
  hour    => '*/1',
}

}
