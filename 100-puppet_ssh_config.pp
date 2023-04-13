# This project teaches to set ssh configuration with puppet
# use the stdlib module to be used in the puppet manifest
include stdlib

file_line{'Automate the private key':
	ensure => present,
	path => '/etc/ssh/ssh_config',
	line => 'IdentityFile ~/.ssh/school',
	replace => true
}
file_line{'Switch the password Authentication off':
	ensure => present,
	path => '/etc/ssh/ssh_config',
	line => 'PasswordAuthentication no',
	replace => true
}
