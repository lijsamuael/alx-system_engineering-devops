# # Puppet script to install NGINX and configure it

package { 'nginx':
  ensure => installed,
  name   => 'nginx',
}

file_line { 'redirect':
  ensure => present,
  path   => '/etc/nginx/sites-available/default',
  after  => 'listen 80 default_server;',
  line   => 'rewrite ^/redirect_me https://youtu.be/WPkMUU9tUqk permanent;',
}

file { '/var/www/html/index.html':
  content => 'Holberton School',
}

service { 'start nginx':
  ensure => running,
  require => Package['nginx'],
}
