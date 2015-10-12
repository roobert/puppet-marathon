# == Class: marathon::service
#
# Ensure marathon is running
#
class marathon::service {
  service { 'marathon':
    ensure  => running,
    enable  => true,
    require => Class['::marathon::install']
  }
}
