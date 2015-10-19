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

  exec { 'marathon-consul-callback':
    command => 'curl localhost:8080/v2/eventSubscriptions?callbackUrl=http://172.17.42.1:4000'
  }
}
