 cron { 'run-updates':
  command => '/usr/bin/apt-get update && /usr/bin/apt-get dist-upgrade -y --force-yes',
  user => 'root',
  hour => '12',
  minute => '00',
  ensure => 'present',
}

include users, ssh, sudoers, ntp, nagios-nrpe, hosts

$nagios_server = ['212.29.129.12']
$nagios_real = $nagios_server

 file { 'nrpe.cfg':
        path => '/etc/nagios/nrpe.cfg',
        ensure  => file,
        require => Package['nagios-nrpe-server'],
        content => template("nagios-nrpe/nrpe.cfg.erb"),
        notify => Service['nagios-nrpe-server']
}
