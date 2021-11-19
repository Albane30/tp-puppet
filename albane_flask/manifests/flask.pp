# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include albane_flask::flask
class albane_flask::flask {

package {'python':
  ensure => present,
}

package {'python-pip':
  ensure => present,
  require => Package[python],
}
exec {'install flask':
  path => "/usr/bin:/usr/sbin:/bin",
  command => "pip install flask",
  require => Package[python-pip],
  }
notice ("flask installed")
}
