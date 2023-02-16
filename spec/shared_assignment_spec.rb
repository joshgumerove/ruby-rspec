# by default subject will be the class / instance under test
# use a block
# described_class takes the place of the subject under test - so a name for the subject does not need to be provided

RSpec.describe Array do
    subject { [1, 2] } 

    it {is_expected.to eq([1, 2])}

    it 'is expected to equal the declared array' do
        expect(subject).to eq([1, 2])
    end
end