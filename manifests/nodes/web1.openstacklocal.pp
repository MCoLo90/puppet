node 'web1.openstacklocal' {

include nginx, ntp

$servers_real = debian

cron { "puppet":
  ensure  => present,
  command => "pull-updates",
  user    => 'git',
  minute  => '*/5'
}

}
