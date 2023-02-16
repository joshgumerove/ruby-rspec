RSpec.describe 'comparison matchers' do 
    it 'allows for comparison with built-in Ruby operators' do 
        expect(10).to be > 3
        expect(8).to be < 15
        expect(1).to be >= -1
        expect(22).to be <= 100
    end

    describe 100 do
        it { is_expected.to be < 101 }
        it { is_expected.to be > 90 }
        it { is_expected.not_to be > 105 }
    end

end

# note when a subject is created