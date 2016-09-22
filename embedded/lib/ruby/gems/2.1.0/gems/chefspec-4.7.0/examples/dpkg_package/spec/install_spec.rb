require 'chefspec'

RSpec.configure do |config|
  config.platform = 'ubuntu'
  config.version  = '14.04'
end

describe 'dpkg_package::install' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'installs a dpkg_package with the default action' do
    expect(chef_run).to install_dpkg_package('default_action')
    expect(chef_run).to_not install_dpkg_package('not_default_action')
  end

  it 'installs a dpkg_package with an explicit action' do
    expect(chef_run).to install_dpkg_package('explicit_action')
  end

  it 'installs a dpkg_package with attributes' do
    expect(chef_run).to install_dpkg_package('with_attributes').with(version: '1.0.0')
    expect(chef_run).to_not install_dpkg_package('with_attributes').with(version: '1.2.3')
  end

  it 'installs a dpkg_package when specifying the identity attribute' do
    expect(chef_run).to install_dpkg_package('identity_attribute')
  end
end
