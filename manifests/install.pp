# == Class: marathon::install
#
# Install marathon package
#
class marathon::install {
  package { 'marathon':
    ensure   => $::marathon::version,
    requires => Class['java8']
  }
}
