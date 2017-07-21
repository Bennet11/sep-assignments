require_relative 'node'
require_relative 'film'
require_relative 'kevin_bacon_finder'

RSpec.describe "kevin_bacon_finder" do
  let(:kevin_bacon) { Node.new("Kevin Bacon") }

  let(:liam_neeson) { Node.new("Liam Neeson") }
  let(:brad_pitt) { Node.new("Brad Pitt") }
  let(:ryan_reynolds) { Node.new("Ryan Reynolds") }
  let(:will_smith) { Node.new("Will Smith") }
  let(:al_pacino) { Node.new("Al Pacino") }
  let(:robert_de_niro) { Node.new("Robert De Niro") }
  let(:ray_liotta) { Node.new("Ray Liotta") }
  let(:joe_pesci) { Node.new("Joe Pesci") }
  let(:kim_dickens) { Node.new("Kim Dickens") }
  let(:elisabeth_shue) { Node.new("Elisabeth Shue") }
  let(:samuel_jackson) { Node.new("Samuel Jackson") }
  let(:jack_nickolson) { Node.new("Jack Nickolson") }
  let(:john_travolta) { Node.new("John Travolta") }
  let(:leonardo_di_caprio) { Node.new("Leonardo Di Caprio") }
  let(:mel_gibson) { Node.new("Mel Gibson") }
  let(:tom_cruise) { Node.new("Tom Cruise") }
  let(:clint_eastwood) { Node.new("Clint Eastwood") }
  let(:angelina_jolie) { Node.new("Angelina Jolie") }
  let(:natalie_portman) { Node.new("Natalie Portman") }

  let(:goodfellas) { Film.new("Goodfellas", [robert_de_niro, ray_liotta, joe_pesci]) }
  let(:god_father) { Film.new("God Father", [al_pacino]) }
  let(:schindler_list) { Film.new("Schindler List", [liam_neeson]) }
  let(:life) { Film.new("Life", [ryan_reynolds]) }
  let(:pursuit_of_happiness) { Film.new("Pursuit of Happiness", [will_smith]) }
  let(:braveheart) { Film.new("Braveheart", [mel_gibson]) }
  let(:blood_diamond) { Film.new("Blood Diamond", [leonardo_di_caprio]) }
  let(:the_shining) { Film.new("The Shining", [jack_nickolson]) }
  let(:gran_torino) { Film.new("Gran Torino", [clint_eastwood]) }
  let(:pulp_fiction) { Film.new("Pulp Fiction", [john_travolta, samuel_jackson]) }
  let(:top_gun) { Film.new("Top Gun", [tom_cruise]) }
  let(:hollow_man) { Film.new("Hollow Man", [kevin_bacon, elisabeth_shue, kim_dickens]) }
  let(:v_for_vendetta) { Film.new("V for Vendetta", [natalie_portman]) }

  describe "#find_kevin_bacon" do
    it "returns an empty array if starting node has Kevin Bacon" do
      expect(find_kevin_bacon(kevin_bacon)).eq []
    end

    it "finds Kevin bacon with a maximum of distance of 6" do
      # start with an actor node who is not kevin, and return a list of 6 movies, the last of which he's in
      expect(find_kevin_bacon(john_travolta)).to eq(pulp_fiction)
      expect(find_kevin_bacon(al_pacino)).to eq(god_father)
      expect(find_kevin_bacon(will_smith)).to eq(pursuit_of_happiness)
      expect(find_kevin_bacon(robert_de_niro)).to eq(goodfellas)
      expect(find_kevin_bacon(mel_gibson)).to eq(braveheart)
      expect(find_kevin_bacon(elisabeth_shue)).to eq(hollow_man)

    end

    it "returns nil if distance to Kevin Bacon is greater than 6" do
      # start with an actor node who is not kevin, who isn't within 6 movies of kevin, return nil
      expect(find_kevin_bacon(tom_cruise)).to eq nil
    end

    it "returns nil if an actor node is not in any movies" do
      # start with an actor who isn't in any movies, return nil
      expect(find_kevin_bacon(michael_fassbender)).to eq nil
    end
  end
end
