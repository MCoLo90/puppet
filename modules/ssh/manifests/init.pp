class ssh {

package { 'openssh-server':
 ensure => 'installed'
}

service { 'ssh':
 ensure => running,
 enable => true,
 require => Package['openssh-server'],
}

ssh_authorized_key {'enter_ssh':
 user => 'enter',
 type => 'rsa',
 key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC1TK62/Z4+9iVCpo/zf2p5yhBROmJUFyYEMl+Jdf2e+mbF8V+P81AaPBwjiBFUUq8TnvdhPeiDtA2UsgQvpRuZ9qtRSwVawCDvjNcxTmrfT6J9+XnPdQELlr+18u/Bq7AHD+wdU+A5/Jrby6G/jDwljwbyRQb6eFoo65+z6v/QoF8eSL5gvtZAkBemsLCiyf5Q59moEzhukL2FeNEYylbvBHLP5+JPzczUyXrbmo1QkeSgvESIStJpa913HKg5baTglDLwozZqIekgpKBeM3f8S7T+H+PN0efEBe5f2X0smy7k/XzfblxC1IS0io73nIDA59+D9afWI7VJn0/GUw/f',
}

ssh_authorized_key {'root_ssh':
 user => 'root',
 type => 'rsa',
 key =>'AAAAB3NzaC1yc2EAAAADAQABAAABAQC1TK62/Z4+9iVCpo/zf2p5yhBROmJUFyYEMl+Jdf2e+mbF8V+P81AaPBwjiBFUUq8TnvdhPeiDtA2UsgQvpRuZ9qtRSwVawCDvjNcxTmrfT6J9+XnPdQELlr+18u/Bq7AHD+wdU+A5/Jrby6G/jDwljwbyRQb6eFoo65+z6v/QoF8eSL5gvtZAkBemsLCiyf5Q59moEzhukL2FeNEYylbvBHLP5+JPzczUyXrbmo1QkeSgvESIStJpa913HKg5baTglDLwozZqIekgpKBeM3f8S7T+H+PN0efEBe5f2X0smy7k/XzfblxC1IS0io73nIDA59+D9afWI7VJn0/GUw/f'
}

file { '/etc/ssh/sshd_config':
 source => 'puppet:///modules/ssh/sshd_config',
 notify => Service['ssh'],
 owner => 'root',
 group => 'root',
}

file { '/etc/issue.net':
 source => 'puppet:///modules/ssh/issue_config',
 notify => Service ['ssh'],
 owner => 'root',
 group => 'root',
}
}
