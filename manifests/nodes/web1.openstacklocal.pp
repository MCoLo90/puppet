node 'web1.openstacklocal' {

include nginx, ntp

cron { "puppet":
  ensure  => present,
  command => "pull-updates",
  user    => 'git',
  minute  => '*/5'
}

}
