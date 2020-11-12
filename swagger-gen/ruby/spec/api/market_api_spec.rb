=begin
#Bybit API

### REST API for the Bybit Exchange. Base URI: [https://api.bybit.com]  

OpenAPI spec version: 0.2.10
Contact: support@bybit.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::MarketApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MarketApi' do
  before do
    # run before each test
    @instance = SwaggerClient::MarketApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MarketApi' do
    it 'should create an instance of MarketApi' do
      expect(@instance).to be_instance_of(SwaggerClient::MarketApi)
    end
  end

  # unit tests for market_account_ratio
  # Query Account Long Short Ratio
  # @param symbol Contract type.
  # @param period Data recording period. 5min, 15min, 30min, 1h, 4h, 1d
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Limit for data size, max size is 500. Default size is 50
  # @return [Object]
  describe 'market_account_ratio test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for market_big_deal
  # Query Big Deal
  # @param symbol Contract type.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Limit for data size, max size is 1000. Default size is 500
  # @return [Object]
  describe 'market_big_deal test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for market_liq_records
  # Query liq records.
  # @param symbol Contract type.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :from From ID. Default: return latest data
  # @option opts [Integer] :limit Limit for data size, max size is 1000. Default size is 500
  # @option opts [Integer] :start_time Start timestamp point for result, in millisecond
  # @option opts [Integer] :end_time End timestamp point for result, in millisecond
  # @return [Object]
  describe 'market_liq_records test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for market_open_interest
  # Query Open Interest
  # @param symbol Contract type.
  # @param period Data recording period. 5min, 15min, 30min, 1h, 4h, 1d
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Limit for data size, max size is 200. Default size is 50
  # @return [Object]
  describe 'market_open_interest test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for market_orderbook
  # Get the orderbook.
  # @param symbol Contract type.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'market_orderbook test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for market_symbol_info
  # Get the latest information for symbol.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :symbol Contract type.
  # @return [Object]
  describe 'market_symbol_info test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for market_trading_records
  # Get recent trades
  # @param symbol Contract type.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :from From ID. Default: return latest data
  # @option opts [Integer] :limit Number of results. Default 500; max 1000
  # @return [Object]
  describe 'market_trading_records test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
