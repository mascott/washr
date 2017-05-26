require "rails_helper"

RSpec.describe TrucksController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/trucks").to route_to("trucks#index")
    end

    it "routes to #new" do
      expect(:get => "/trucks/new").to route_to("trucks#new")
    end

    it "routes to #create" do
      expect(:post => "/trucks").to route_to("trucks#create")
    end

  end
end
