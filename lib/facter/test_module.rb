# test_module.rb

Facter.add(:test_module) do
  setcode "/bin/echo '2.0'"
end
