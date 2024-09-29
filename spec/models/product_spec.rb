require 'models/product'

RSpec.describe Product do 
    context ".new" do
        it "Returns a product with correct attributes" do
            # arrange
            params = {name: 'Maçã', price: 1.50}
            # act
            result = Product.new(**params)
            # assert
            expect(result.name).to eq('Maçã')
            expect(result.price).to eq(1.50)
        end
    end
    
    context ".all" do
        it "Returns a list of all products" do
            maca = Product.new(name: 'Maçã', price: 1.50)
            banana = Product.new(name: 'Banana', price: 2.50)
            abacate = Product.new(name: 'Abacate', price: 6.50)
            result = Product.all
            expect(result).to include(maca, banana, abacate)
        end
    end
end 