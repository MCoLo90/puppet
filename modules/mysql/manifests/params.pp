# Class: mysql::params
#
# This class holds parameters that need to be 
# accessed by other classes.
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class mysql::params{
  case $operatingsystem {
    'centos', 'redhat', 'fedora': {
      $socket               = '/var/lib/mysql/mysql.sock'
      $service_name         = 'mysqld'
      $client_package_name  = 'mysql'
    }
    'ubuntu', 'debian': {
      $socket               = '/var/run/mysqld/mysqld.sock'
      $service_name         = 'mysql'
      $client_package_name  = 'mysql-client'
    }
    default: {
      $socket               = '/var/lib/mysql/mysql.sock'
      $service_name         = 'mysqld'
      $client_package_name  = 'mysql'
    }
  }
}
