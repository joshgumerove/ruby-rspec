RSpec.describe Hash do 
    subject(:josh) do 
        {first_name: "Josh", last_name: "Gumerove"}
    end

    it 'has two key-value pairs' do
        expect(subject.length).to eq(2)
        expect(josh.length).to eq(2)
    end

    describe 'nested example' do
        it 'has two key-value pairs' do
            expect(subject.length).to eq(2)
        end
    end
end

# whatever returned from block is what subject will evaluate to 
# note how we can provide a name for the subject