RSpec.describe 'contain_exactly matcher' do
    subject { [1, 2, 3] }

    describe 'long form syntax' do
        it 'should check for the presence of all elements' do
            expect(subject).to contain_exactly(1, 2, 3)
        end
    end

    it { is_expected.to contain_exactly(1, 3, 2) }
end