# == Class: marathon::install
#
# Install marathon package
#
class marathon::install {
  package { 'marathon':
    ensure  => $::marathon::version,
    require => Class['java8']
  }
}
