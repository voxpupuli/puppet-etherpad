class etherpad::plugins::ep_mypads {
  assert_private()

  $default_mypads_options = {
    searchFilter => '(uid={{username}})',
    tlsOptions   => {
      rejectUnauthorized => false,
    },
    properties   => {
      login     => 'uid',
      email     => 'mail',
      firstname => 'givenName',
      lastname  => 'sn',
    },
    defaultLang  => 'fr',
  }

  $_real_mypads_options = $default_mypads_options + $etherpad::mypads

  etherpad::plugins::common { 'ep_mypads' :
  }

  concat::fragment { 'ep_mypads':
    target  => "${etherpad::root_dir}/settings.json",
    content => epp("${module_name}/plugins/ep_mypads.epp"),
    order   => '12',
  }
}
