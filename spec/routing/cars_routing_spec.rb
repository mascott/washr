require "rails_helper"

RSpec.describe CarsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/cars").to route_to("cars#index")
    end

    it "routes to #new" do
      expect(:get => "/cars/new").to route_to("cars#new")
    end

    it "routes to #create" do
      expect(:post => "/cars").to route_to("cars#create")
    end

  end
end
