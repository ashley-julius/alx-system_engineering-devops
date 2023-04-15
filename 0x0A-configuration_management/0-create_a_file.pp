# This project shows us how to use puppet manifest to create a file
require 'uri'

$file_content = 'I love Puppet\n'
$escaped_file_content = URI::DEFAULT_PARSER.escape($file_content)

file { '/tmp/school':
  ensure  =>  'file',
  mode    =>  '0744',
  owner   =>  'www-data',
  group   =>  'www-data',
  content =>  $escaped_file_content,
  }

