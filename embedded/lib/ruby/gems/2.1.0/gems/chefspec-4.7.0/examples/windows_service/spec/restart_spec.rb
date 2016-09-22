require 'chefspec'

RSpec.configure do |config|
  config.platform = 'windows'
  config.version  = '2012R2'
end

describe 'windows_service::restart' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'restarts a windows_service with an explicit action' do
    expect(chef_run).to restart_windows_service('explicit_action')
    expect(chef_run).to_not restart_windows_service('not_explicit_action')
  end

  it 'restarts a windows_service with attributes' do
    expect(chef_run).to restart_windows_service('with_attributes').with(pattern: 'pattern')
    expect(chef_run).to_not restart_windows_service('with_attributes').with(pattern: 'bacon')
  end

  it 'restarts a windows_service when specifying the identity attribute' do
    expect(chef_run).to restart_windows_service('identity_attribute')
  end
end
