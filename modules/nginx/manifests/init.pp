class nginx {
package { 'nginx':
 ensure => installed,
}

service { 'nginx':
 ensure => running,
 enable => false,	
 require => Package['nginx'],
}

file { '/etc/nginx/sites-enabled/default':
 source => 'puppet:///modules/nginx/index.conf',
 notify => Service['nginx'],
 require => Package['nginx']
}

file {"/var/www":
  ensure  => directory,
  recurse => true,
  source  => "puppet:///modules/nginx/web",
}


}
