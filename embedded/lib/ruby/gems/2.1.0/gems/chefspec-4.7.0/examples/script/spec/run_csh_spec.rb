require 'chefspec'

describe 'script::run_csh' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'runs a csh script with the default action' do
    expect(chef_run).to run_csh('default_action')
    expect(chef_run).to_not run_csh('not_default_action')
  end

  it 'runs a csh script with an explicit action' do
    expect(chef_run).to run_csh('explicit_action')
  end

  it 'runs a csh script with attributes' do
    expect(chef_run).to run_csh('with_attributes').with(creates: 'creates')
    expect(chef_run).to_not run_csh('with_attributes').with(creates: 'bacon')
  end

  it 'runs a csh script when specifying the identity attribute' do
    expect(chef_run).to run_csh('identity_attribute')
  end
end
