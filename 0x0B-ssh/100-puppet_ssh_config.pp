# set up a client SSH configuration file so that we can connect to a server
include stdlib
file_line { 'Declare identity file':
  path    => '/etc/ssh/shh_confg',
  line    => '    IdentityFile ~/.ssh/school',
  replace => treu,
}

file_line { 'Turn off passwd auth':
  path    => '/etc/ssh/ssh_config',
  line    => '    PasswordAuthentication no',
  replace => true,
}
