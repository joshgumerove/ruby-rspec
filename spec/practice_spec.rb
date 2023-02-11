class Person

    attr_accessor :name
    
    def initialize(name)
        @name = name
    end

end


RSpec.describe "Person" do
    let(:person) { Person.new("Josh") }

    it "says names of people and can change peoples names" do
        expect(person.name).to eq("Josh")
        person.name = "Steve"
        expect(person.name).to eq("Steve")
    end

end