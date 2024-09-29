require 'app'

RSpec.describe App do 
    context ".call" do
        it "Returns 'running'" do
            expect(App.call).to eq('running')
        end
    end
end 