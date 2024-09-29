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
end