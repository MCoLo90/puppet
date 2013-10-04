class mysql {
package { 'mysql-server':
 ensure => installed,
}

service { 'mysql-server':
 ensure => running,
 enable => true,	
 require => Package['mysql-server'],
}

}

