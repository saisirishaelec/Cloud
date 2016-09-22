require 'spec_helper'

describe Berkshelf::API::CacheBuilder::Worker::ChefServer do
  describe '.worker_type' do
    it 'is chef_server' do
      expect(described_class.worker_type).to eq('chef_server')
    end
  end

  subject do
    described_class.new(url: "http://localhost:8889", client_name: "reset",
      client_key: fixtures_path.join("reset.pem"))
  end

  it_behaves_like "a human-readable string"

  describe "#cookbooks" do
    before do
      chef_cookbook("ruby", "1.0.0")
      chef_cookbook("ruby", "2.0.0")
      chef_cookbook("elixir", "3.0.0")
      chef_cookbook("elixir", "3.0.1")
    end

    it "returns an array containing an item for each cookbook on the server" do
      expect(subject.cookbooks.size).to eq(4)
    end

    it "returns an array of RemoteCookbooks" do
      subject.cookbooks.each do |cookbook|
        expect(cookbook).to be_a(Berkshelf::API::RemoteCookbook)
      end
    end

    it "each RemoteCookbook is tagged with a location_type matching the worker_type of the builder" do
      subject.cookbooks.each do |cookbook|
        expect(cookbook.location_type).to eql(described_class.worker_type)
      end
    end
  end
end
