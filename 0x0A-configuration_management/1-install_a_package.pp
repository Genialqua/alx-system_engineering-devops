# This manifest installs a package

package { 'flask':
  ensure  => 'present'
  require => Exec['pip3']
}

# This script contains the command

exec { 'pip3':
  command => '/usr/bin/python3 sudo pip3 install -v 2.1.0 flask'
}
