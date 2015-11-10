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
    command => '/opt/puppetlabs/puppet/bin/curl localhost:8080/v2/eventSubscriptions?callbackUrl=http://172.17.0.1:4000'
  }
}
