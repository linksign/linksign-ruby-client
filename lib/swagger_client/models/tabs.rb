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
  # \u7B7E\u7F72\u76F8\u5173\u4FE1\u606F
  class Tabs
    # \u7B7E\u7F72\u65F6\u95F4\u4FE1\u606F
    attr_accessor :date_tabs

    attr_accessor :sign_here_tabs

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'date_tabs' => :'dateTabs',
        
        :'sign_here_tabs' => :'signHereTabs'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'date_tabs' => :'Array<SignDateTime>',
        :'sign_here_tabs' => :'Array<SignHere>'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'dateTabs']
        if (value = attributes[:'dateTabs']).is_a?(Array)
          self.date_tabs = value
        end
      end
      
      if attributes[:'signHereTabs']
        if (value = attributes[:'signHereTabs']).is_a?(Array)
          self.sign_here_tabs = value
        end
      end
      
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          date_tabs == o.date_tabs &&
          sign_here_tabs == o.sign_here_tabs
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [date_tabs, sign_here_tabs].hash
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
