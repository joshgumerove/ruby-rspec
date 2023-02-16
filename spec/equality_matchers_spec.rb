RSpec.describe 'equality matchers' do
    let(:a) { 3.0 }
    let(:b) { 3 }

    describe 'eq matcher' do
        it 'tests for value and ignores type' do
            expect(a).to eq(b)
            expect(b).to eq(3.0)
            expect(a).to eq(3)
        end
    end

    describe 'eql matcher' do
        it 'tests for value, including same type' do
            expect(a).not_to eql(b)
            expect(a).not_to eql(3)
            expect(b).not_to eql(3.0)

            expect(a).to eql(3.0)
            expect(b).to eql(3)
        end
    end

end


# more on Equality matchers
# eql: more strict than eq (must be of the same class and value)
# note the use of nested describe blocks