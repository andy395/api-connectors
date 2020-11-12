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

# Unit tests for SwaggerClient::PositionsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PositionsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::PositionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PositionsApi' do
    it 'should create an instance of PositionsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::PositionsApi)
    end
  end

  # unit tests for positions_change_margin
  # Update margin.
  # @param symbol Contract type which you want update its margin
  # @param margin New margin you want set
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'positions_change_margin test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for positions_close_pnl_records
  # Get user&#39;s closed profit and loss records
  # @param symbol Contract type
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start_time Start timestamp point for result, in second
  # @option opts [Integer] :end_time End timestamp point for result, in second
  # @option opts [String] :exec_type Execution type
  # @option opts [Integer] :page Page. By default, gets first page of data. Maximum of 50 pages
  # @option opts [Integer] :limit Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page.
  # @return [Object]
  describe 'positions_close_pnl_records test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for positions_my_position
  # Get my position list.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :symbol Contract type which you want update its margin
  # @return [Object]
  describe 'positions_my_position test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for positions_save_leverage
  # Change user leverage.
  # @param symbol A symbol which you want change its leverage
  # @param leverage New leverage you want set
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'positions_save_leverage test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for positions_trading_stop
  # Set Trading-Stop Condition.
  # @param symbol Contract type
  # @param [Hash] opts the optional parameters
  # @option opts [String] :take_profit Not less than 0, 0 means cancel TP
  # @option opts [String] :stop_loss Not less than 0, 0 means cancel SL
  # @option opts [String] :trailing_stop Not less than 0, 0 means cancel TS
  # @option opts [String] :new_trailing_active Trailing stop trigger price. Trailing stops are triggered only when the price reaches the specified price. Trailing stops are triggered immediately by default.
  # @return [Object]
  describe 'positions_trading_stop test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
