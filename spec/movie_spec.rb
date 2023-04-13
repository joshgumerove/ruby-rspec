class Actor
    attr_reader :name
    def initialize(name)
        @name = name
    end

    def ready?
        sleep 3
        true
    end

    def act 
        'I love you, baby'
    end

    def fall_of_ladder
        'Call my agent! No way!'
    end

    def light_on_fire
        false
    end
end

class Movie
    attr_reader :actor
    def initialize(actor)
        @actor = actor
    end

    def start_shooting
        if actor.ready?
            puts actor.act
            puts actor.fall_of_ladder
            actor.light_on_fire
            actor.act
        end
    end
end

# actor = Actor.new('Brad Pitt')
# movie = Movie.new(actor)
# puts movie.actor.name
# puts movie.start_shooting

RSpec.describe Movie do
    let(:stuntman) { double('Mr. Danger', ready?: true, act: 'Any string at all', fall_of_ladder: 'Sure lets do it', light_on_fire: false) } # note how this responds to needed methods
    subject { described_class.new(stuntman) }

    describe '#start_shooting method' do
        it 'expects an actor to do 3 actions' do
            # expect(stuntman).to receive(:light_on_fire).once
            # expect(stuntman).to receive(:light_on_fire).exactly(1).times
            expect(stuntman).to receive(:light_on_fire).at_most(1).times

            expect(stuntman).to receive(:act).exactly(2).times
            subject.start_shooting
        end
    end
end

