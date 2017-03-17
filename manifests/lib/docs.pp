# This class installs the postgresql-docs See README.md for more
# details.
class postgresql::lib::docs (
  String $package_name                                             = $postgresql::params::docs_package_name,
  Enum['present', 'absent', 'latest', 'installed'] $package_ensure = 'present',
) inherits postgresql::params {

  package { 'postgresql-docs':
    ensure => $package_ensure,
    name   => $package_name,
    tag    => 'postgresql',
  }

}
