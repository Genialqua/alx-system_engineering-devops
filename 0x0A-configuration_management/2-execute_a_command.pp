# This is to list all running processes

exec {'ps':
  provider => 'shell',
  command  => 'ps -ef | grep killmenow'
}

# This is to terminate a process

exec {'kill':
  path     => '/usr/bin',
  provider => 'shell', 
  require  => Exec['ps'],
  command  => 'pkill killmenow'
}

