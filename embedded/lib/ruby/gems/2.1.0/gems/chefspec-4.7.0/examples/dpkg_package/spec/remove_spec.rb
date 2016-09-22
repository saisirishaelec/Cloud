require 'chefspec'

RSpec.configure do |config|
  config.platform = 'ubuntu'
  config.version  = '14.04'
end

describe 'dpkg_package::remove' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'removes a dpkg_package with an explicit action' do
    expect(chef_run).to remove_dpkg_package('explicit_action')
    expect(chef_run).to_not remove_dpkg_package('not_explicit_action')
  end

  it 'removes a dpkg_package with attributes' do
    expect(chef_run).to remove_dpkg_package('with_attributes').with(version: '1.0.0')
    expect(chef_run).to_not remove_dpkg_package('with_attributes').with(version: '1.2.3')
  end

  it 'removes a dpkg_package when specifying the identity attribute' do
    expect(chef_run).to remove_dpkg_package('identity_attribute')
  end
end
