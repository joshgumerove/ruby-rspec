RSpec.describe 'firetruck' do
    it 'validates the beginning and end of word' do 
        expect(subject).to start_with('fire').and end_with('truck')
    end
end

RSpec.describe 20 do
    it {is_expected.to be_even and respond_to(:times)}
end

RSpec.describe [4, 8, 15, 16, 23, 42] do 
    it 'checks for inclusion and beginning order' do
        expect(subject).to start_with(4, 8, 15).and include(42)
    end
end