require 'chefspec'

describe 'script::run_ruby' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'runs a ruby script with the default action' do
    expect(chef_run).to run_ruby('default_action')
    expect(chef_run).to_not run_ruby('not_default_action')
  end

  it 'runs a ruby script with an explicit action' do
    expect(chef_run).to run_ruby('explicit_action')
  end

  it 'runs a ruby script with attributes' do
    expect(chef_run).to run_ruby('with_attributes').with(creates: 'creates')
    expect(chef_run).to_not run_ruby('with_attributes').with(creates: 'bacon')
  end

  it 'runs a ruby script when specifying the identity attribute' do
    expect(chef_run).to run_ruby('identity_attribute')
  end
end
