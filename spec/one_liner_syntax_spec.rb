RSpec.describe 'shorthand syntax' do 
    subject { 5 }

    context 'with classic syntax' do
        it 'should equal 5' do 
            expect(subject).to eq(5)
        end
    end

    context 'with one-liner syntax' do 
        it { is_expected.to eq(5) }
    end
end

# is_expected: method that allows us to shorten amount of code we write
# note the difference when reading texts in terminal