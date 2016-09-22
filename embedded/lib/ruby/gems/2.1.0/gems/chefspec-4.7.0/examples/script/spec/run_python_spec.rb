require 'chefspec'

describe 'script::run_python' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'runs a python script with the default action' do
    expect(chef_run).to run_python('default_action')
    expect(chef_run).to_not run_python('not_default_action')
  end

  it 'runs a python script with an explicit action' do
    expect(chef_run).to run_python('explicit_action')
  end

  it 'runs a python script with attributes' do
    expect(chef_run).to run_python('with_attributes').with(creates: 'creates')
    expect(chef_run).to_not run_python('with_attributes').with(creates: 'bacon')
  end

  it 'runs a python script when specifying the identity attribute' do
    expect(chef_run).to run_python('identity_attribute')
  end
end
