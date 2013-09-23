class sudoers {
file { '/etc/sudoers':
 source => 'puppet:///modules/sudoers/sudoers',
 mode => '0400',
 owner => 'root',
 group => 'root',
}

}
