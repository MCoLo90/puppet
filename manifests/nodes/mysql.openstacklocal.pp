node 'mysql.openstacklocal' {

include ntp
include mysql

cron { "puppet":
  ensure  => present,
  command => "/usr/local/bin/pull-updates",
  user    => 'git',
  minute  => '*/5'
}

}
