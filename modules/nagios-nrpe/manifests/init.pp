class nagios-nrpe {
 package {"nagios-nrpe-server":
 ensure => "installed"
 }
 package {"nagios-plugins-basic":
 ensure => "installed"
 }
 package {"nagios-plugins":
 ensure => "installed"
 }

 file { '/usr/lib/nagios':
  ensure => directory,
}

 service { 'nagios-nrpe-server':
  ensure => running,
  enable => true,

}

}
