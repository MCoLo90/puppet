node 'web1.openstacklocal' {

include nginx

cron { "puppet":
  ensure  => present,
  command => "pull-updates",
  user    => 'git',
  interval  => "hourly",
}

}
