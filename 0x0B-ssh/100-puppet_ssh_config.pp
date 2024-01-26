# Puppet manifest to configure SSH client settings

include stdlib

# Ensure password authentication is disabled
file_line { 'Refuse to authenticate using a password':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => 'PasswordAuthentication no',
}

# Specify the private key for authentication
file_line { 'Use private key':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => 'IdentityFile ~/.ssh/school',
}
