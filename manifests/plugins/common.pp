define etherpad::plugins::common (
  String[1] $plugin_name = $title,
  $valid_plugin_name = assert_type(String[1], $title),
) {
  include nodejs
  nodejs::npm { $valid_plugin_name :
    ensure   => 'present',
    target   => $etherpad::root_dir,
    package  => $valid_plugin_name,
    user     => $etherpad::user,
    home_dir => $etherpad::root_dir,
    notify   => Service[$etherpad::service_name],
  }
}
