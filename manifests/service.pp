# == Class: marathon::service
#
# Ensure marathon is running
#
service { 'marathon::service':
  ensure  => running,
  enable  => true,
  require => Class['::marathon::install']
}
