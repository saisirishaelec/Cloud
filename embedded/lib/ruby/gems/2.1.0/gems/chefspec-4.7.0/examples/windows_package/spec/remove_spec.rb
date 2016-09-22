require 'chefspec'

RSpec.configure do |config|
  config.platform = 'windows'
  config.version  = '2012R2'
end

describe 'windows_package::remove' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'removes a windows_package with an explicit action' do
    expect(chef_run).to remove_windows_package('explicit_action')
    expect(chef_run).to_not remove_windows_package('not_explicit_action')
  end

  it 'removes a windows_package with attributes' do
    expect(chef_run).to remove_windows_package('with_attributes').with(installer_type: :msi)
    expect(chef_run).to_not remove_windows_package('with_attributes').with(installer_type: 'bacon')
  end

  it 'removes a windows_package when specifying the identity attribute' do
    expect(chef_run).to remove_windows_package('identity_attribute')
  end
end
