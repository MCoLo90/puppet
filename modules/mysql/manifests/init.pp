class { 'mysql::server':
  override_options => { 'mysqld' => { 'max_connections' => '1024' } }
}
