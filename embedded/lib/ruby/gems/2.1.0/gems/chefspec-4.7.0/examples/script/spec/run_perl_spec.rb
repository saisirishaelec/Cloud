require 'chefspec'

describe 'script::run_perl' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'runs a perl script with the default action' do
    expect(chef_run).to run_perl('default_action')
    expect(chef_run).to_not run_perl('not_default_action')
  end

  it 'runs a perl script with an explicit action' do
    expect(chef_run).to run_perl('explicit_action')
  end

  it 'runs a perl script with attributes' do
    expect(chef_run).to run_perl('with_attributes').with(creates: 'creates')
    expect(chef_run).to_not run_perl('with_attributes').with(creates: 'bacon')
  end

  it 'runs a perl script when specifying the identity attribute' do
    expect(chef_run).to run_perl('identity_attribute')
  end
end
