RSpec.describe 'not_to method' do 
    it 'checks for the inverse of a matcher' do 
        expect(5).not_to eq(10)
        expect([1, 2, 3]).not_to equal([1, 2, 3])
    end
end