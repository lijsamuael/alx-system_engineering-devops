# This puppet file configures the SSH config
file_line { 'Refuse password authentication':
  path  => '~/.ssh/config',
  line  => 'KbdInteractiveAuthentication no',
  match => 'KbdInteractiveAuthentication yes',
}

file_line { 'Specify identity file':
  path  => '~/.ssh/config',
  line  => 'IdentityFile ~/.ssh/holberton',
}
