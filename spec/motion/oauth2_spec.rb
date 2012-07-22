require File.expand_path('../../spec_helper.rb', __FILE__)

describe Motion::OAuth2 do
  before do
    @client = Motion::OAuth2.new('access_token')
  end

  describe '.new' do
    it 'should setup access token' do
      client = Motion::OAuth2.new('access_token')
      client.access_token.should == 'access_token'
    end

    it 'should use Bearer schema as default' do
      client = Motion::OAuth2.new('access_token')
      client.schema.should == :Bearer
    end

    it 'should allow overwrite schema' do
      client = Motion::OAuth2.new('access_token', :OAuth)
      client.schema.should == :OAuth
    end
  end

  [:get, :post, :put, :delete, :head, :patch].each do |method|
    describe "##{method}" do
      # TODO
      # it 'should set OAuth2 Authorization header'
      # others?
    end
  end
end