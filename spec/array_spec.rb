RSpec.describe Array do
    it 'starts of empty' do
        expect(subject.length).to eq(0)
    end

    it 'is no longer empty' do 
        subject.push(1)
        expect(subject.length).to eq(1)
    end
end