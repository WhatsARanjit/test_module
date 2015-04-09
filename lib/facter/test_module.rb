# test_module.rb

Facter.add(:test_module) do
  setcode "/bin/echo '1.0'"
end
