RSpec.describe Hash do 
    it 'should start off empty' do
        expect(subject.length).to eq(0)
        subject[:some_key] = "Some value"
        expect(subject.length).to eq(1)
    end

    it "is isolated between examples" do 
        expect(subject.length).to eq(0)
    end
end

# note: subject is implicitly the empty hash
# this is why it is beneficial to pass in the actual class name