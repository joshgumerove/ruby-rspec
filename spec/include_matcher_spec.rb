RSpec.describe 'include matcher' do 
    describe 'hot chocolate' do 
        it 'checks for substring inclusion' do
            expect(subject).to include('chocolate')
        end
    end

    describe [10, 20, 30] do
        it 'checks for inclusion in the array, regardless of order' do 
            expect(subject).to include(30, 10)
        end
    end

    describe ({a: 2, b: 4}) do 
        it 'can check for key existence' do 
            expect(subject).to include(:a)
            expect(subject).to include(:a, :b)
        end

        it 'can check for a key-value pair' do 
            expect(subject).to include(a: 2)
        end
    end
end