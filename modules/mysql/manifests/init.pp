class { '::mysql::server':
  override_options => { 'mysqld' => { 'max_connections' => '1024' } }
}

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

