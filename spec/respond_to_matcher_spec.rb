class HotChocolate
    def drink
        'Delicious'
    end

    def discard
        'PLOP!'
    end

    def purchase(number)
        "Awesome, I just purchased #{number} more hot chocolate beverages!"
    end

end

class Coffee
    def drink; end
    def discard; end
    def purchase(number); end
end


RSpec.describe HotChocolate do
    it 'confirms than an object can respond to a method' do
        expect(subject).to respond_to(:drink)
        expect(subject).to respond_to(:discard)
        expect(subject).to respond_to(:purchase, :discard)
    end

    it 'confirms an object can respond to a method with arguments' do 
        expect(subject).to respond_to(:purchase).with(1).arguments
    end
end