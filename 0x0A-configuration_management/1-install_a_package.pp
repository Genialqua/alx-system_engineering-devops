# This manifest installs a package

package { 'flask':
  ensure  => '2.1.0',
  require => Exec['pip3']
}

# This script contains the command

exec { 'pip3':
  command => '/usr/bin/python3 sudo pip3 install flask == 2.1.0'
}
