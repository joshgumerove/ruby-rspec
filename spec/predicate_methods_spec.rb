RSpec.describe 'predicate methods and predicate matchers' do 
    it 'can be tested with Ruby methods' do 
        result = 16 / 2
        expect(result.even?).to eq(true)
    end

    it 'can be tested with predicate matchers' do 
        expect(16 / 2).to be_even
        expect(15).to be_odd
        expect([1, 2, 3]).not_to be_empty
        expect(0).to be_zero
        expect([]).to be_empty
    end

    describe 0 do
        it { is_expected.to be_zero }
    end
end

# note the be_even method







# puts 0.zero?
# puts 2.zero?

# puts 2.even?
# puts 3.even?

# puts 11.odd?
# puts 16.odd?

# puts [].empty?
# puts [1, 2].empty?

# predicate method: a method that returns a boolean value