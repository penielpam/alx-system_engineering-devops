exec{'fix-wordpress':
  command => 'sed -i a/phpp/php/g /var/www/html/wp-settings.php',
  path    => 'usr/local/bin/:/bin'
}
