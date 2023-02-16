RSpec.describe 'all matcher' do
    it 'allows for aggregate checks' do
        expect([5, 7, 9]).to all be_odd
        expect([2, 4, 6]).to all be_even
        expect([[], [], []]).to all be_empty
    end
end


# allows us to check that all elements fit a particular condition
# note the all method: and the syntax