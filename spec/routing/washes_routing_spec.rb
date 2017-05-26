require "rails_helper"

RSpec.describe WashesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/washes").to route_to("washes#index")
    end

  end
end
