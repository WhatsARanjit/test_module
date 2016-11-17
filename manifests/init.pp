class test_module (
  $foo = $::test_module,
) {

  notify { 'test notification':
    message => "The version is definitely ${foo}.",
  }

  notify { "Version: ${foo}": }

  file { '/tmp/test_module':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('test_module/test_module_foo.erb'),
  }

  file { [ '/tmp/software', "/tmp/software/${foo}" ]:
    ensure => directory,
  }

  file { '/tmp/current':
    ensure => link,
    target => "/tmp/software/${foo}",
  }

}

