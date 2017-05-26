require 'rails_helper'

RSpec.describe "cars/index", type: :view do
  before(:each) do
    assign(:cars, [
      Car.create!(
        :license_plate => "License Plate"
      ),
      Car.create!(
        :license_plate => "License Plate"
      )
    ])
  end

  it "renders a list of cars" do
    render
    assert_select "tr>td", :text => "License Plate".to_s, :count => 2
  end
end
