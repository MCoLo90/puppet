node 'mysql.openstacklocal' {

include ::mysql::server, ntp

cron { "puppet":
  ensure  => present,
  command => "/usr/local/bin/pull-updates",
  user    => 'git',
  minute  => '*/5'
}

}
