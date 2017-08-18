require_relative 'city'
require_relative 'tsp_greed'

RSpec.describe "tsp_greed" do
  let(:denver) { City.new("Denver") }
  let(:minneapolis) { City.new("Minneapolis") }
  let(:kc) { City.new("Kansas City") }
  let(:stl) { City.new("St. Louis") }
  let(:okc) { City.new("Oklahoma City") }
  let(:el_paso) { City.new("El Paso") }
  let(:albequerque) { City.new("Albequerque") }
  let(:pheonix) { City.new("Pheonix") }
  let(:lv) { City.new("Las Vegas") }
  let(:slc) { City.new("Salt Lake City") }
  let(:boise) { City.new("Boise") }
  let(:sf) { City.new("San Francisco") }

  let(:city_list) { Hash.new }

  before do
    denver.add_neighbors([[albequerque, 450], [kc, 602], [slc, 525], [minneapolis, 905]])
    minneapolis.add_neighbors([[kc, 439], [denver, 905]])
    kc.add_neighbors([[stl, 251], [denver, 602], [minneapolis, 439], [okc, 351]])
    stl.add_neighbors([[kc, 251]])
    okc.add_neighbors([[kc, 351], [el_paso, 693]])
    el_paso.add_neighbors([[albequerque, 268], [okc, 693]])
    albequerque.add_neighbors([[el_paso, 268], [denver, 450], [pheonix, 421]])
    pheonix.add_neighbors([[lv, 297], [albequerque, 421]])
    lv.add_neighbors([[pheonix, 297], [slc, 421]])
    slc.add_neighbors([[boise, 345], [denver, 525], [lv, 421], [sf, 735]])
    boise.add_neighbors([[slc, 345], [sf, 638]])
    sf.add_neighbors([[boise, 638], [slc, 735]])

    city_list["Denver"] = denver
    city_list["Minneapolis"] = minneapolis
    city_list["Kansas City"] = kc
    city_list["St. Louis"] = stl
    city_list["Oklahoma City"] = okc
    city_list["El Paso"] = el_paso
    city_list["Albequerque"] = albequerque
    city_list["Pheonix"] = pheonix
    city_list["Las Vegas"] = lv
    city_list["Salt Lake City"] = slc
    city_list["Boise"] = boise
    city_list["San Francisco"] = sf
  end

  describe "#nearest_city" do
    it "returns El Paso as the nearest city from Denver" do
      expect(nearest_city(city_list, denver)).to eq(el_paso)
    end

    it "returns St. Louiseles as the nearest city from Minneapolis" do
      expect(nearest_city(city_list, minneapolis)).to eq(stl)
    end

    it "returns Kansas City as the nearest city from St. Louis" do
      expect(nearest_city(city_list, stl)).to eq(kc)
    end

    it "returns St. Louis as the nearest city from Oklahoma City" do
      expect(nearest_city(city_list, okc)).to eq(stl)
    end

    it "returns Albequerque as the nearest city from El Paso" do
      expect(nearest_city(city_list, el_paso)).to eq(albequerque)
    end

    it "returns El Paso as the nearest city from Albequerque" do
      expect(nearest_city(city_list, albequerque)).to eq(el_paso)
    end
  end
end
