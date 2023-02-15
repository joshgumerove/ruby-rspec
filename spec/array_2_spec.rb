RSpec.describe Array do
    subject(:sally) do
        ["Sally", "Sue"] 
    end

    it 'starts off with two elements and can be reduced' do 
        expect(sally.length).to eq(2)
        sally.pop()
        expect(sally.length).to eq(1)
    end

    it 'is isolated between examples' do 
        expect(sally.length).to eq(2)
    end
end