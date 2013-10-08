class hosts {

file { '/etc/hosts':
 source => 'puppet:///modules/hosts/hosts',
}
}
