require 'spec_helper'

describe 'test_module' do
  context 'normal checks' do
    it { should contain_class('test_module') }
    it { should contain_file('/tmp/test_module').with(
      'ensure' => 'file',
      'owner'  => 'root',
      'group'  => 'root'
    ) }
  end
  context 'with custom foo param' do
    let :params do
      {
        :foo => 'mhe'
      }
    end
    it { should contain_file('/tmp/test_module').with_content %r{mhe} }
  end
end
