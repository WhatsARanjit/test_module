# test_module.rb

Facter.add(:test_module) do
  setcode "/bin/echo 'test_module'"
end
