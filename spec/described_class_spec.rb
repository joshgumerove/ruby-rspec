class Royal
    attr_reader :name

    def initialize(name)
        @name = name
    end

end

RSpec.describe Royal do 
    subject { described_class.new('Josh') }
    let(:louis) { described_class.new('Louis') }

    it 'represents a great person' do 
        expect(subject.name).to eq('Josh')
    end
end

# described_class: references whatever class is under test
# this makes our tests more accomodating to potential change