# This project shows us how to use puppet manifest to create a file

$file_content = 'I love Puppet'

file { '/tmp/school':
  ensure  =>  'file',
  mode    =>  '0744',
  owner   =>  'www-data',
  group   =>  'www-data',
  content =>  $file_content
  }

