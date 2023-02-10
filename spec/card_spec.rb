class Card
    attr_reader :type

    def initialize(type)
        @type = type
    end
    
end



RSpec.describe 'Card' do 
    it 'has a type' do
        card = Card.new('Ace of Spades')
        expect(card.type).to eq('Ace of Spades')
    end
end



# accepts a string as an argument
# describe keyword: creates an example group
# it is a method: that goes inside the body of the block and also takes a block
# should describe behaviour not technical implementation
# note how it reads like english
# whatever is being evaluated is argument provided to expect method