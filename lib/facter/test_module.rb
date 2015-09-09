# test_module.rb

Facter.add(:test_module) do
  setcode "/bin/echo '3.0'"
end
