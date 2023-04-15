# Setting the SSH Client Configuration
# Using the stdlib module in puppet in the manifest

include stdlib

file_line { 'Automate the private key':
  ensure  => 'present',
  path    => '/etc/ssh/ssh_config',
  line    => 'IdentityFile ~/.ssh/school',
  replace => 'true',
  }

file_line { 'Switch the password Authentication off':
  ensure  => 'present',
  path    => '/etc/ssh/ssh_config',
  line    => 'PasswordAuthentication no',
  replace => 'true',
  }
