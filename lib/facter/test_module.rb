# test_module.rb

Facter.add(:test_module) do
  setcode `echo test_module`
end
