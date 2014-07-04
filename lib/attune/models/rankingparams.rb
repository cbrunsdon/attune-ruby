module Attune
  module Model
    # 
    class RankingParams
      attr_accessor :scope
      

      attr_accessor :ip
      

      attr_accessor :user_agent
      

      attr_accessor :view
      

      attr_accessor :entity_type
      

      attr_accessor :ids
      

      attr_accessor :customer
      

      attr_accessor :anonymous
      

      def initialize(attributes = {})
        return if attributes.empty?
        # Morph attribute keys into undescored rubyish style
        if self.class.attribute_map[:"scope"]
          value = attributes["scope"] || attributes[:"scope"]
            if value.is_a?(Array)
              @scope = value.map{ |v| ScopeEntry.new(v) }

            end
          end
        if self.class.attribute_map[:"ip"]
          # Workaround since JSON.parse has accessors as strings rather than symbols
            @ip = attributes["ip"] || attributes[:"ip"]
        end
        if self.class.attribute_map[:"user_agent"]
          # Workaround since JSON.parse has accessors as strings rather than symbols
            @user_agent = attributes["userAgent"] || attributes[:"user_agent"]
        end
        if self.class.attribute_map[:"view"]
          # Workaround since JSON.parse has accessors as strings rather than symbols
            @view = attributes["view"] || attributes[:"view"]
        end
        if self.class.attribute_map[:"entity_type"]
          # Workaround since JSON.parse has accessors as strings rather than symbols
            @entity_type = attributes["entityType"] || attributes[:"entity_type"]
        end
        if self.class.attribute_map[:"ids"]
          value = attributes["ids"] || attributes[:"ids"]
            if value.is_a?(Array)
              @ids = value

            end
          end
        if self.class.attribute_map[:"customer"]
          # Workaround since JSON.parse has accessors as strings rather than symbols
            @customer = attributes["customer"] || attributes[:"customer"]
        end
        if self.class.attribute_map[:"anonymous"]
          # Workaround since JSON.parse has accessors as strings rather than symbols
            @anonymous = attributes["anonymous"] || attributes[:"anonymous"]
        end
        

      end

      def to_body
        body = {}
        self.class.attribute_map.each_pair do |key, value|
          body[value] = self.send(key) unless self.send(key).nil?
        end
        body
      end

      def to_json(options = {})
        to_body.to_json
      end

      private
      # :internal => :external
      def self.attribute_map
        {
          :scope => :scope,
          :ip => :ip,
          :user_agent => :userAgent,
          :view => :view,
          :entity_type => :entityType,
          :ids => :ids,
          :customer => :customer,
          :anonymous => :anonymous

        }
      end
    end
  end
end
