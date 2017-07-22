require_relative 'node'
require_relative 'film'
require_relative 'kevin_bacon_finder'

RSpec.describe "kevin_bacon_finder" do
  let(:bacon) { Node.new("Kevin Bacon") }

  let(:robert_de_niro) { Node.new("Robert De Niro") }
  let(:ray_liotta) { Node.new("Ray Liotta") }
  let(:joe_pesci) { Node.new("Joe Pesci") }
  let(:al_pacino) { Node.new("Al Pesci") }
  let(:liam_neeson) { Node.new("Liam Neeson") }
  let(:ray_reynolds) { Node.new("Ray Reynolds") }
  let(:will_smith) { Node.new("Will Smith") }
  let(:mel_gibson) { Node.new("Mel Gibson") }
	let(:leonardo_di_caprio) { Node.new("Leonardo Di Caprio") }
	let(:jack_nickolson) { Node.new("Jack Nickolson") }
	let(:clint_eastwood) { Node.new("Clint Eastwood") }
	let(:john_travolta) { Node.new("John Travolta") }
	let(:samuel_jackson) { Node.new("Samuel Jackson") }
	let(:tom_cruise) { Node.new("Tom Cruise") }
	let(:elisabeth_shue) { Node.new("Elisabeth Shue") }
	let(:kim_dickens) { Node.new("Kim Dickens") }
	let(:natalie_portman) { Node.new("Natalie Portman") }
	let(:ryan_reynolds) { Node.new("Ryan Reynolds") }

  let(:ortiz) {Node.new("Xavier Ortiz")}


  describe "#find_kevin_bacon" do
		before(:each) do
			@goodfellas = Film.new("Goodfellas", [robert_de_niro, ray_liotta, joe_pesci])
			@god_father = Film.new("God Father", [al_pacino])
			@schindler_list = Film.new("Schindler List", [liam_neeson])
			@life = Film.new("Life", [ryan_reynolds])
			@pursuit_of_happiness = Film.new("Pursuit of Happiness", [will_smith])
			@braveheart = Film.new("Braveheart", [mel_gibson])
			@blood_diamond = Film.new("Blood Diamond", [leonardo_di_caprio])
			@the_shining = Film.new("The Shining", [jack_nickolson])
			@gran_torino = Film.new("Gran Torino", [clint_eastwood])
			@pulp_fiction = Film.new("Pulp Fiction", [john_travolta, samuel_jackson])
			@top_gun = Film.new("Top Gun", [tom_cruise])
			@hollow_man = Film.new("Hollow Man", [bacon, elisabeth_shue, kim_dickens])
			@v_for_vendetta = Film.new("V for Vendetta", [natalie_portman])
			@x_men_first_class = Film.new("X-Men: First Class", [bacon, natalie_portman])
		end

    it "returns an empty array if the node is Kevin Bacon" do
      expect(find_kevin_bacon(bacon)).to eq []
    end

    it "finds kevin bacon within two jumps " do
      expect(find_kevin_bacon(natalie_portman)).to eq ["V for Vendetta", "X-Men: First Class"]
    end

    it "returns [] if an actor node is not in any movies" do
      expect(find_kevin_bacon(ortiz)).to eq []
    end
  end
end
