require_relative 'city'
require_relative 'tsp_greed'

Rspec.describe "tsp_greed" do
  let(:home) { City.new("Sacrament", 0) }
  let(:los_angeles) { City.new("Los Angeles", 386) }
  let(:chicago) { City.new("Chicago", 2044) }
  let(:seattle) { City.new("Seattle", 752) }
  let(:san_francisco) { City.new("San Francisco", 87) }
  let(:boston) { City.new("Boston", 3012) }
  let(:cleveland) { City.new("Cleveland", 2374) }

  describe "#nearest_city" do
    it "returns San Francisco as the nearest city from home" do
      expect((nearest_city(city_list, home)).to eq(san_francisco))
    end

    it "returns Los Angeles as the nearest city from San Francisco" do
      expect((nearest_city(city_list, san_francisco)).to eq(los_angeles))
    end

    it "returns Seattle as the nearest city from Los Angeles" do
      expect((nearest_city(city_list, los_angeles)).to eq(seattle))
    end

    it "returns Chicago as the nearest city from Seattle" do
      expect((nearest_city(city_list, seattle)).to eq(chicago))
    end

    it "returns Cleveland as the nearest city from Chicago" do
      expect((nearest_city(city_list, chicago)).to eq(cleveland))
    end

    it "returns Boston as the nearest city from Cleveland" do
      expect((nearest_city(city_list, cleveland)).to eq(boston))
    end
  end
end
