# This manifest shows us how to install a package

exec { 'pkill':
  command  => 'pkill -f killmenow',
  provider => 'shell',
  }
