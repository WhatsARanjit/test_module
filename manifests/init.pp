class test_module (
  $foo = 'bar',
) {

  notify { 'test notification':
    message => "The message is ${foo}.",
  }

  file { '/tmp/test_module':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => $foo,
  }
}

