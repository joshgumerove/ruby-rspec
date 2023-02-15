RSpec.describe 'before and after hooks' do
    before(:context) do 
        puts "OUTER Before Context"
    end

    after(:context) do 
        puts "OUTER After Context"
    end

    before(:example) do
        puts "Before example"
    end

    after(:example) do 
        puts "After example"
    end

    it 'is just a random example' do 
        expect(5 * 4).to eq(20)
    end

    it 'is just another random example' do
        expect(3 - 2).to eq(1)
    end

    context 'with condition A' do 
        before(:context) do 
            puts "INNER Before Context"
        end
    
        after(:context) do 
            puts "INNER After Context"
        end

        it 'does some more basic math' do 
            expect(1 + 1).to eq(2)
        end

        it 'does subtraction as well' do 
            expect(1 - 1).to eq(0)
        end
    end
end