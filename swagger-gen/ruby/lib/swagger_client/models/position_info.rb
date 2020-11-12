=begin
#Bybit API

### REST API for the Bybit Exchange. Base URI: [https://api.bybit.com]  

OpenAPI spec version: 0.2.10
Contact: support@bybit.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'date'

module SwaggerClient
  # PositionInfo.
  class PositionInfo
    attr_accessor :id

    attr_accessor :user_id

    attr_accessor :risk_id

    attr_accessor :symbol

    attr_accessor :side

    attr_accessor :size

    attr_accessor :position_value

    attr_accessor :entry_price

    attr_accessor :leverage

    attr_accessor :auto_add_margin

    attr_accessor :position_margin

    attr_accessor :liq_price

    attr_accessor :bust_price

    attr_accessor :occ_closing_fee

    attr_accessor :occ_funding_fee

    attr_accessor :take_profit

    attr_accessor :stop_loss

    attr_accessor :position_status

    attr_accessor :deleverage_indicator

    attr_accessor :oc_calc_data

    attr_accessor :order_margin

    attr_accessor :wallet_balance

    attr_accessor :unrealised_pnl

    attr_accessor :realised_pnl

    attr_accessor :cum_realised_pnl

    attr_accessor :cum_commission

    attr_accessor :cross_seq

    attr_accessor :position_seq

    attr_accessor :created_at

    attr_accessor :updated_at

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'user_id' => :'user_id',
        :'risk_id' => :'risk_id',
        :'symbol' => :'symbol',
        :'side' => :'side',
        :'size' => :'size',
        :'position_value' => :'position_value',
        :'entry_price' => :'entry_price',
        :'leverage' => :'leverage',
        :'auto_add_margin' => :'auto_add_margin',
        :'position_margin' => :'position_margin',
        :'liq_price' => :'liq_price',
        :'bust_price' => :'bust_price',
        :'occ_closing_fee' => :'occ_closing_fee',
        :'occ_funding_fee' => :'occ_funding_fee',
        :'take_profit' => :'take_profit',
        :'stop_loss' => :'stop_loss',
        :'position_status' => :'position_status',
        :'deleverage_indicator' => :'deleverage_indicator',
        :'oc_calc_data' => :'oc_calc_data',
        :'order_margin' => :'order_margin',
        :'wallet_balance' => :'wallet_balance',
        :'unrealised_pnl' => :'unrealised_pnl',
        :'realised_pnl' => :'realised_pnl',
        :'cum_realised_pnl' => :'cum_realised_pnl',
        :'cum_commission' => :'cum_commission',
        :'cross_seq' => :'cross_seq',
        :'position_seq' => :'position_seq',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Float',
        :'user_id' => :'Float',
        :'risk_id' => :'Float',
        :'symbol' => :'String',
        :'side' => :'String',
        :'size' => :'Float',
        :'position_value' => :'Float',
        :'entry_price' => :'Float',
        :'leverage' => :'Float',
        :'auto_add_margin' => :'Float',
        :'position_margin' => :'Float',
        :'liq_price' => :'Float',
        :'bust_price' => :'Float',
        :'occ_closing_fee' => :'Float',
        :'occ_funding_fee' => :'Float',
        :'take_profit' => :'Float',
        :'stop_loss' => :'Float',
        :'position_status' => :'String',
        :'deleverage_indicator' => :'String',
        :'oc_calc_data' => :'String',
        :'order_margin' => :'Float',
        :'wallet_balance' => :'Float',
        :'unrealised_pnl' => :'Float',
        :'realised_pnl' => :'Float',
        :'cum_realised_pnl' => :'Float',
        :'cum_commission' => :'Float',
        :'cross_seq' => :'Float',
        :'position_seq' => :'Float',
        :'created_at' => :'String',
        :'updated_at' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.has_key?(:'risk_id')
        self.risk_id = attributes[:'risk_id']
      end

      if attributes.has_key?(:'symbol')
        self.symbol = attributes[:'symbol']
      end

      if attributes.has_key?(:'side')
        self.side = attributes[:'side']
      end

      if attributes.has_key?(:'size')
        self.size = attributes[:'size']
      end

      if attributes.has_key?(:'position_value')
        self.position_value = attributes[:'position_value']
      end

      if attributes.has_key?(:'entry_price')
        self.entry_price = attributes[:'entry_price']
      end

      if attributes.has_key?(:'leverage')
        self.leverage = attributes[:'leverage']
      end

      if attributes.has_key?(:'auto_add_margin')
        self.auto_add_margin = attributes[:'auto_add_margin']
      end

      if attributes.has_key?(:'position_margin')
        self.position_margin = attributes[:'position_margin']
      end

      if attributes.has_key?(:'liq_price')
        self.liq_price = attributes[:'liq_price']
      end

      if attributes.has_key?(:'bust_price')
        self.bust_price = attributes[:'bust_price']
      end

      if attributes.has_key?(:'occ_closing_fee')
        self.occ_closing_fee = attributes[:'occ_closing_fee']
      end

      if attributes.has_key?(:'occ_funding_fee')
        self.occ_funding_fee = attributes[:'occ_funding_fee']
      end

      if attributes.has_key?(:'take_profit')
        self.take_profit = attributes[:'take_profit']
      end

      if attributes.has_key?(:'stop_loss')
        self.stop_loss = attributes[:'stop_loss']
      end

      if attributes.has_key?(:'position_status')
        self.position_status = attributes[:'position_status']
      end

      if attributes.has_key?(:'deleverage_indicator')
        self.deleverage_indicator = attributes[:'deleverage_indicator']
      end

      if attributes.has_key?(:'oc_calc_data')
        self.oc_calc_data = attributes[:'oc_calc_data']
      end

      if attributes.has_key?(:'order_margin')
        self.order_margin = attributes[:'order_margin']
      end

      if attributes.has_key?(:'wallet_balance')
        self.wallet_balance = attributes[:'wallet_balance']
      end

      if attributes.has_key?(:'unrealised_pnl')
        self.unrealised_pnl = attributes[:'unrealised_pnl']
      end

      if attributes.has_key?(:'realised_pnl')
        self.realised_pnl = attributes[:'realised_pnl']
      end

      if attributes.has_key?(:'cum_realised_pnl')
        self.cum_realised_pnl = attributes[:'cum_realised_pnl']
      end

      if attributes.has_key?(:'cum_commission')
        self.cum_commission = attributes[:'cum_commission']
      end

      if attributes.has_key?(:'cross_seq')
        self.cross_seq = attributes[:'cross_seq']
      end

      if attributes.has_key?(:'position_seq')
        self.position_seq = attributes[:'position_seq']
      end

      if attributes.has_key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.has_key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          user_id == o.user_id &&
          risk_id == o.risk_id &&
          symbol == o.symbol &&
          side == o.side &&
          size == o.size &&
          position_value == o.position_value &&
          entry_price == o.entry_price &&
          leverage == o.leverage &&
          auto_add_margin == o.auto_add_margin &&
          position_margin == o.position_margin &&
          liq_price == o.liq_price &&
          bust_price == o.bust_price &&
          occ_closing_fee == o.occ_closing_fee &&
          occ_funding_fee == o.occ_funding_fee &&
          take_profit == o.take_profit &&
          stop_loss == o.stop_loss &&
          position_status == o.position_status &&
          deleverage_indicator == o.deleverage_indicator &&
          oc_calc_data == o.oc_calc_data &&
          order_margin == o.order_margin &&
          wallet_balance == o.wallet_balance &&
          unrealised_pnl == o.unrealised_pnl &&
          realised_pnl == o.realised_pnl &&
          cum_realised_pnl == o.cum_realised_pnl &&
          cum_commission == o.cum_commission &&
          cross_seq == o.cross_seq &&
          position_seq == o.position_seq &&
          created_at == o.created_at &&
          updated_at == o.updated_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, user_id, risk_id, symbol, side, size, position_value, entry_price, leverage, auto_add_margin, position_margin, liq_price, bust_price, occ_closing_fee, occ_funding_fee, take_profit, stop_loss, position_status, deleverage_indicator, oc_calc_data, order_margin, wallet_balance, unrealised_pnl, realised_pnl, cum_realised_pnl, cum_commission, cross_seq, position_seq, created_at, updated_at].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
