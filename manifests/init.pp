# == Class: marathon
#
# Installs marathon
#
# ['version']
#   Specify package version to install
class marathon (
  $version,
) {
  class { '::marathon::install': } ->
  class { '::marathon::service': }
}
