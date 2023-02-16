RSpec.shared_examples 'a Ruby object with a length method that returns three' do
    it 'returns the number of items' do
        expect(subject.length).to eq(3)
    end
end


RSpec.describe Array do
    subject { [1, 2, 3] }
    include_examples 'a Ruby object with a length method that returns three'
end

RSpec.describe String do
    subject { 'abc' }
    include_examples 'a Ruby object with a length method that returns three'
end

RSpec.describe Hash do
    subject { {a: 1, b: 2, c: 3} }
    include_examples 'a Ruby object with a length method that returns three'
end

class SausageLink
    def length
        3
    end
end

RSpec.describe SausageLink do 
    subject { described_class.new }
    include_examples 'a Ruby object with a length method that returns three'
end

# common method and return value for all classes
# note the shared_examples method
# note because of lazy loading do not need to declare subject in shared_examples
# note the include_examples method