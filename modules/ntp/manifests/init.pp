class ntp {
 case $operatingsystem {
  centos, redhat : {
     $service_name = 'ntpd'    
     $conf_file = 'ntp.conf.el'
     $default_servers = [ "0.centos.pool.ntp.org",
			  "1.centos.pool.ntp.org",
 			  "3.centos.pool.ntp.org", ]
   }

  debian, ubuntu : {
     $service_name = 'ntpd'
     $conf_file = 'ntp.conf.debian'			
     $default_servers = [ "0.debian.pool.ntp.org iburst",
			  "1.debian.pool.ntp.org iburst",
 			  "2.debian.pool.ntp.org iburst", ]
    }
  }			

$servers_real = $default_servers

	package { "ntp":
       ensure => "installed"
    }

    file { 'ntp.conf':
        path => '/etc/ntp.conf',
        ensure  => file,
        require => Package['ntp'],
        content => template("ntp/${conf_file}.erb"),
      }
}
