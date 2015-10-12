# == Class: marathon::service
#
# Ensure marathon is running
#
class marathon::service {
  service { 'marathon::service':
    ensure  => running,
    enable  => true,
    require => Class['::marathon::install']
  }
}
