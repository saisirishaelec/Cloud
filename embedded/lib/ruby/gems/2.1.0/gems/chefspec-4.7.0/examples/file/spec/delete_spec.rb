require 'chefspec'

describe 'file::delete' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'deletes a file with an explicit action' do
    expect(chef_run).to delete_file('/tmp/explicit_action')
    expect(chef_run).to_not delete_file('/tmp/not_explicit_action')
  end

  it 'deletes a file with attributes' do
    expect(chef_run).to delete_file('/tmp/with_attributes').with(backup: false)
    expect(chef_run).to_not delete_file('/tmp/with_attributes').with(backup: true)
  end

  it 'deletes a file when specifying the identity attribute' do
    expect(chef_run).to delete_file('/tmp/identity_attribute')
  end
end
