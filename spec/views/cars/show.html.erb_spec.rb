require 'rails_helper'

RSpec.describe "cars/show", type: :view do
  before(:each) do
    @car = assign(:car, Car.create!(
      :license_plate => "License Plate"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/License Plate/)
  end
end
