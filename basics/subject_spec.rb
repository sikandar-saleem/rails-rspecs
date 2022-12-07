# subject is same as let it is isolated for each example
# subject here is the class(Hash) we pass to descrbe,
# its create Hash before every example, its not work with 'Hash' (string) 
# so, we recoomend to pass class instead of string on describe due to subject topic.

RSpec.describe Hash do
    # let(:subject) = { {} }

    it 'should be empty hash' do
        expect(subject.length).to eq(0)
    end
end