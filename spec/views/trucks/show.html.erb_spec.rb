require 'rails_helper'

RSpec.describe "trucks/show", type: :view do
  before(:each) do
    @truck = assign(:truck, Truck.create!(
      :license_plate => "License Plate",
      :tailgate_up => true,
      :muddy => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/License Plate/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end
