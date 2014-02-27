class hosts {

file { '/etc/hosts':
 ensure  => present,
 source => 'puppet:///modules/hosts/hosts',
 owner => root,
 group => root,
 mode  => 644
}
}
