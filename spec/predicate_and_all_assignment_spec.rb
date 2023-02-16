RSpec.describe 'predicate, all and be matchers' do
    it 'tests for emptiness' do
        expect({}).to all(be_empty)
    end

    describe [10, 20, 30] do
        it { is_expected.to all(be_even) }
    end

    describe [0, 1, 2] do
        it { is_expected.to all(be >= 0) }
    end

    describe 'tests for truthy or falsiness' do
        it 'checks that values are truthy' do
            expect('hello').to be_truthy
            expect(0).to be_truthy
            expect(-10).to be_truthy
            expect([]).to be_truthy
            expect(99.99).to be_truthy
            expect(:hello).to be_truthy
            expect(true).to be_truthy
            expect([1, 2, 3]).to be_truthy
        end

        it 'checks for falsiness' do 
            expect(false).to be_falsy
            expect(nil).to be_falsy
        end
    end
end