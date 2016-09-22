require 'chefspec'

describe 'apt_package::purge' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'purges a apt_package with an explicit action' do
    expect(chef_run).to purge_apt_package('explicit_action')
    expect(chef_run).to_not purge_apt_package('not_explicit_action')
  end

  it 'purges a apt_package with attributes' do
    expect(chef_run).to purge_apt_package('with_attributes').with(version: '1.0.0')
    expect(chef_run).to_not purge_apt_package('with_attributes').with(version: '1.2.3')
  end

  it 'purges a apt_package when specifying the identity attribute' do
    expect(chef_run).to purge_apt_package('identity_attribute')
  end
end
