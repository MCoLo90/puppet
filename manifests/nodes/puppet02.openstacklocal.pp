node 'puppet02.openstacklocal' {

include ntp, nagios-nrpe

$nagios_server = ['212.29.129.12']

$nagios_real = $nagios_server

file { 'nrpe.cfg':
        path => '/etc/nagios/nrpe.cfg',
        ensure  => file,
        require => Package['nagios-nrpe-server'],
        content => template("nagios-nrpe/nrpe.cfg.erb"),
        notify => Service['nagios-nrpe-server']
      }

}
