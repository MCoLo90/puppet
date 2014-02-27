
class users {
user { 'enter':
 ensure => present,
 comment => 'testuser',
 home => '/home/enter',
 managehome => true,
 shell => '/bin/bash',
 password => 'KSdjksd',
}

}
