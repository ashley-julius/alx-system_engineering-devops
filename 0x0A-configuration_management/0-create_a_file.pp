# This project shows us how to use puppet manifest to create a file
file { '/tmp/school':
  ensure  =>  'file',
  mode    =>  '0744',
  owner   =>  'WWW-data',
  group   =>  'WWW-data',
  content =>  'I love Puppet\n'
  }

