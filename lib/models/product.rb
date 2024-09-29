class Product
    @@dataset = []
    attr_accessor :name, :price

    def initialize(name: nil, price: nil)
        @name = name
        @price = price
        @@dataset << self
    end

    def self.all
        @@dataset
    end

    def as_json
      hash = {}
      attrs = self.instance_variables.map{|attr| attr.to_s.delete('@').to_sym}
      attrs.each do |attr|
        hash[attr] = self.send(attr)
      end
      hash
    end
end