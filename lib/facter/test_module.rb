# test_module.rb

Facter.add(:test_module) do
  setcode "/bin/echo '4.0'"
end
