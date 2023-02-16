RSpec.describe 'not_to method' do
    it 'checks that two values do not match' do
        expect(5).not_to eq(10)
        expect('Hello').not_to eq('hello')
        expect([1, 2]).not_to eq([1, 2, 3])
    end
end







# matcher: an assertion or expectation
# many different matchers in RSpec
# not_to: checks for the inverse of negative of a given matcher
# will primarily use the .to method in the course - but this is good to know