class Card
    attr_reader :rank, :suit

    def initialize(rank, suit)
        @rank = rank
        @suit = suit
    end
    
end



RSpec.describe Card do 
    it 'has a rank' do
        card = Card.new('Ace', 'Spades')
        expect(card.rank).to eq('Ace')
    end

    it 'has a suit' do
        card = Card.new("Queen", "Diamonds")
        expect(card.suit).to eq("Diamonds")
    end
end



# accepts a string as an argument
# describe keyword: creates an example group
# it is a method: that goes inside the body of the block and also takes a block
# should describe behaviour not technical implementation
# note how it reads like english
# whatever is being evaluated is argument provided to expect method