
# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include albane_flask::server
class albane_flask::server {
package { 'gunicorn':
  ensure => present,
  }
  notice ("gunicorn installed")
  exec {"locate_entrypoint":
    path => "/usr/bin:/usr/sbin:/bin:/sbin",
    environment => ["FLASK_APP=entrypoint.py", "FLASK_ENV=development"],
    command => "flask run -h localhost -p 5112 ",
    cwd => "/etc/puppetlabs/code/modules/albane_flask/manifests"
}

}
