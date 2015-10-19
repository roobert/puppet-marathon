# == Class: marathon::install
#
# Install marathon package
#
class marathon::install {
  package { 'marathon':
    ensure  => $::marathon::version,
    require => [
      Package['oracle-java8-installer'],
      Package['mesos']
    ]
  }

  file { '/etc/marathon/conf':
    ensure => directory
  }

  file { '/etc/marathon/conf/event_subscriber':
    content => 'http_callback'
  }
}
