require 'spec_helper'

describe 'test_module', :type => :class do
  context 'using test_module class' do
  it { should contain_file('/tmp/test_module').with(
    'ensure' => 'file',
    'owner'  => 'root',
    'group'  => 'root'
  ) }
  end
  it { should contain_file('/tmp/test_module').with_content %r{bar} }
end

