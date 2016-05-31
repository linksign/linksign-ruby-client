=begin
领签开发平台接口调试工具

\u6B64\u5DE5\u5177\u65E8\u5728\u5E2E\u52A9\u5F00\u53D1\u8005\u68C0\u6D4B\u8C03\u7528\u3010\u9886\u7B7E\u5F00\u53D1\u8005API\u3011\u65F6\u53D1\u9001\u7684\u8BF7\u6C42\u53C2\u6570\u662F\u5426\u6B63\u786E\uFF0C\u63D0\u4EA4\u76F8\u5173\u4FE1\u606F\u540E\u53EF\u83B7\u5F97\u670D\u52A1\u5668\u7684\u9A8C\u8BC1\u7ED3\u679C\u3002

OpenAPI spec version: 1.0.0
Contact: apiteam@linksign.cn
Generated by: https://github.com/swagger-api/swagger-codegen.git

License: Apache 2.0
http://www.apache.org/licenses/LICENSE-2.0.html


=end

require 'date'

module SwaggerClient
  # \u7B7E\u7F72\u65F6\u95F4\u4FE1\u606F
  class SignDateTime
    # \u65F6\u95F4\u663E\u793A\u683C\u5F0F
    attr_accessor :date_time_pattern

    # \u6587\u6863\u7D22\u5F15
    attr_accessor :document_index

    # \u5B57\u4F53\u540D\u79F0
    attr_accessor :font_name

    # \u5B57\u4F53\u5927\u5C0F
    attr_accessor :font_size

    # \u9875\u7801
    attr_accessor :page_number

    # \u7B7E\u7F72\u4EBA\u7D22\u5F15\u53F7
    attr_accessor :recipient_index

    # \u6A21\u677F\u65F6\u95F4\u5B57\u6BB5\u540D
    attr_accessor :template_date_field_id

    # \u5BBD\u5EA6
    attr_accessor :width

    # X\u5750\u6807
    attr_accessor :x_position

    # Y\u5750\u6807
    attr_accessor :y_position

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'date_time_pattern' => :'dateTimePattern',
        
        :'document_index' => :'documentIndex',
        
        :'font_name' => :'fontName',
        
        :'font_size' => :'fontSize',
        
        :'page_number' => :'pageNumber',
        
        :'recipient_index' => :'recipientIndex',
        
        :'template_date_field_id' => :'templateDateFieldId',
        
        :'width' => :'width',
        
        :'x_position' => :'xPosition',
        
        :'y_position' => :'yPosition'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'date_time_pattern' => :'String',
        :'document_index' => :'String',
        :'font_name' => :'String',
        :'font_size' => :'Float',
        :'page_number' => :'Integer',
        :'recipient_index' => :'String',
        :'template_date_field_id' => :'String',
        :'width' => :'Integer',
        :'x_position' => :'Integer',
        :'y_position' => :'Integer'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'dateTimePattern']
        self.date_time_pattern = attributes[:'dateTimePattern']
      end
      
      if attributes[:'documentIndex']
        self.document_index = attributes[:'documentIndex']
      end
      
      if attributes[:'fontName']
        self.font_name = attributes[:'fontName']
      end
      
      if attributes[:'fontSize']
        self.font_size = attributes[:'fontSize']
      end
      
      if attributes[:'pageNumber']
        self.page_number = attributes[:'pageNumber']
      end
      
      if attributes[:'recipientIndex']
        self.recipient_index = attributes[:'recipientIndex']
      end
      
      if attributes[:'templateDateFieldId']
        self.template_date_field_id = attributes[:'templateDateFieldId']
      end
      
      if attributes[:'width']
        self.width = attributes[:'width']
      end
      
      if attributes[:'xPosition']
        self.x_position = attributes[:'xPosition']
      end
      
      if attributes[:'yPosition']
        self.y_position = attributes[:'yPosition']
      end
      
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          date_time_pattern == o.date_time_pattern &&
          document_index == o.document_index &&
          font_name == o.font_name &&
          font_size == o.font_size &&
          page_number == o.page_number &&
          recipient_index == o.recipient_index &&
          template_date_field_id == o.template_date_field_id &&
          width == o.width &&
          x_position == o.x_position &&
          y_position == o.y_position
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [date_time_pattern, document_index, font_name, font_size, page_number, recipient_index, template_date_field_id, width, x_position, y_position].hash
    end

    # build the object from hash
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          else
            #TODO show warning in debug mode
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        else
          # data not found in attributes(hash), not an issue as the data can be optional
        end
      end

      self
    end

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
        if value.to_s =~ /^(true|t|yes|y|1)$/i
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
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        _model = SwaggerClient.const_get(type).new
        _model.build_from_hash(value)
      end
    end

    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_body (backward compatibility))
    def to_body
      to_hash
    end

    # return the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Method to output non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
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