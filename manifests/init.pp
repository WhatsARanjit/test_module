class test_module (
  $foo = $::test_module,
) {

  notify { 'test notification':
    message => "The version is ${foo}.",
  }

  file { '/tmp/test_module':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('test_module/test_module_foo.erb'),
  }
}

