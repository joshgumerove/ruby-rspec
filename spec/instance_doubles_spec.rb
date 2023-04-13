class Person 
    def a
        sleep 3
        'hello'
    end
end

RSpec.describe Person do 
    describe 'regular double' do
        it 'can implement any method' do 
            person = double(a: 'hello', b: 20)
            expect(person.a).to eq('hello')
        end
    end

    describe 'instance double' do
        it 'can only implement methods that are defined on the class' do
            # person = instance_double(Person, a: 'hello')

            person = instance_double(Person)
            allow(person).to receive(:a).with(no_args).and_return('hello')
            expect(person.a).to eq('hello')
        end
    end
end