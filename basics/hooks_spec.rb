RSpec.describe 'hooks' do

    before(:context) do
        # this run before context or decribe block in which that is written
    end

    after(:context) do
        # this run after context or decribe block in which that is written
    end

    before(:example) do
        # this run after every example
    end

    after(:example) do
        # this run after every example
    end
    
    it 'is dummy test' do
        expect( 2 + 2 ).to eq(4)
    end
end