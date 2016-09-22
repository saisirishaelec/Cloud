require 'chefspec'

RSpec.configure do |config|
  config.platform = 'windows'
  config.version  = '2012R2'
end

describe 'batch::run' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'runs a batch with the default action' do
    expect(chef_run).to run_batch('default_action')
    expect(chef_run).to_not run_batch('not_default_action')
  end

  it 'runs a batch with an explicit action' do
    expect(chef_run).to run_batch('explicit_action')
  end

  it 'runs a batch with attributes' do
    expect(chef_run).to run_batch('with_attributes').with(flags: '-f')
    expect(chef_run).to_not run_batch('with_attributes').with(flags: '-x')
  end

  it 'runs a batch when specifying the identity attribute' do
    expect(chef_run).to run_batch('identity_attribute')
  end
end
