class Card
    attr_accessor :type, :suit
    def initialize(type, suit)
        @type, @suit = type, suit
    end
end

RSpec.describe Card do
    let(:card) { Card.new('King', 'Suit') }

    it 'has a type' do
        expect(card.type).to eq('King')
        card.type = "Queen"
        expect(card.type).to eq('Queen')
    end

    it 'has a suit' do
        expect(card.suit).to eq('Suit')
    end

    it 'has custom error msg' do
        type = "King"
        # type = 'Not Matched'
        expect(card.type).to(eq(type), "I expect #{card.type} but get #{type}")
    end

    context 'this is dummy test' do
        let(:card) { Card.new('Queen', 'Suit')}
        it 'dummy' do
            expect(card.type).to eq('Queen') # this card belongs to card that declare in his block, otherwise global card
        end
    end
end
# **** Benitfits of let ****
# * Lazy loading (not declared utill it used)
# * Make new variable on each example (it)

# let! created variable before all examples, even its not using here (violetes lazy loadin g)
# every block firstly consider let from its scope if we declare same vars using let in different block each block refer to it's variable. 