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
end 