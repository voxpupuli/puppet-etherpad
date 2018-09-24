require 'beaker-rspec'
require 'beaker-puppet'
require 'beaker/puppet_install_helper'
require 'beaker/module_install_helper'

run_puppet_install_helper unless ENV['BEAKER_provision'] == 'no'
install_module
install_module_dependencies

RSpec.configure do |c|
  # Configure all nodes in nodeset
  c.before :suite do
    # Additional modules for soft deps required by puppet-nodejs
    install_module_from_forge('puppetlabs-apt', '>= 4.4.0 < 7.0.0') if fact('os.family') == 'Debian'

    # needed :
    # * a database and granted user
    # * a php with mysql driver
    # * git command used by vcsrepo

    install_module_from_forge('puppetlabs-mysql', '>= 6.0.0 < 7.0.0')

    pp = %(
      include ::mysql::server

      package { 'git' :
        ensure => present,
      }

      class {'::mysql::bindings':
        java_enable   => false,
        perl_enable   => false,
        php_enable    => true,
        python_enable => false,
        ruby_enable   => false,
      }

      mysql::db { 'etherpaddb':
        user     => 'epuserdb',
        password => 'secretdb',
        host     => 'localhost',
        grant    => ['ALL'],
      }
    )

    apply_manifest(pp, catch_failures: true)
    apply_manifest(pp, catch_changes: true)
  end
end
