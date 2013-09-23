 cron { 'run-updates':
  command => '/usr/bin/apt-get update && /usr/bin/apt-get dist-upgrade -y --force-yes',
  user => 'root',
  hour => '12',
  minute => '00',
  ensure => 'present',
}

$nagios_host = '212.29.129.12'

include nginx, users, ssh, sudoers
