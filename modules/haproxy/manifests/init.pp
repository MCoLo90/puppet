class haproxy {
package { 'haproxy':
 ensure => installed,
}

service { 'haproxy':
 ensure => running,
 enable => true,	
 require => Package['haproxy'],
}

file { '/etc/haproxy/haproxy.cfg':
 source => 'puppet:///modules/haproxy/haproxy.cfg',
 notify => Service['haproxy'],
 require => Package['haproxy']
}
}

