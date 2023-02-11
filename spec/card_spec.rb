class Card
    attr_accessor :rank, :suit

    def initialize(rank, suit)
        @rank = rank
        @suit = suit
    end
end

RSpec.describe Card do
    let(:card) { Card.new("Ace", "Spades")}

    it 'has a rank and that rank can change' do
        expect(card.rank).to eq('Ace')
        card.rank = "Queen"
        expect(card.rank).to eq("Queen")
    end

    it 'has a suit' do
        expect(card.suit).to eq("Spades")
    end
end



# accepts a string as an argument
# describe keyword: creates an example group
# it is a method: that goes inside the body of the block and also takes a block
# should describe behaviour not technical implementation
# note how it reads like english
# whatever is being evaluated is argument provided to expect method

# hook: a piece of code that runs automatically at a certain time during test suites execution
# instance variables: allow us to persist info that would otherwise be lost