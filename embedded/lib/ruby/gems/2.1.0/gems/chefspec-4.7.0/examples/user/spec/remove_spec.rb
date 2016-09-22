require 'chefspec'

describe 'user::remove' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'removes a user with an explicit action' do
    expect(chef_run).to remove_user('explicit_action')
    expect(chef_run).to_not remove_user('not_explicit_action')
  end

  it 'removes a user with attributes' do
    expect(chef_run).to remove_user('with_attributes').with(uid: '1234')
    expect(chef_run).to_not remove_user('with_attributes').with(uid: '5678')
  end

  it 'removes a user when specifying the identity attribute' do
    expect(chef_run).to remove_user('identity_attribute')
  end
end
