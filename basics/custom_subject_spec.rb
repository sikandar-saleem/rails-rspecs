RSpec.describe Hash do
    # below we customize the subject now on each example subject created like below, we can say its constructor 
    subject(:my_alias_of_subject) do
        { name: "sikandar", role: "SE" }
    end

    it 'should have role SE' do
        expect(subject[:role]).to eq('SE')
    end
end
