RSpec.describe "math calculations" do 
    it "does basic math" do
        expect(4 + 5).to eq(9)
        expect(2 * 2).to eq(4)
        expect(5 - 3).to eq(2)
        expect(10/2).to eq(5)
    end
end
