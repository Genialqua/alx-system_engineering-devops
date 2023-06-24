# This is to list all running processes

exec {'ps':
  command => 'ps -ef | grep killmenow'
}

# This is to terminate a process

exec {'kill':
  require => Exec['ps'],
  command => 'pkill -f killmenow'
}

