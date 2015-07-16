class test_module::foo (
  $foo = 'foo',
) {

  file { '/tmp/test_module_foo':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0600',
    source => "puppet:///modules/${module_name}/test_module_foo.erb",
  }
}

