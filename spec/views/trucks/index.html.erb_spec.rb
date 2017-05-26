require 'rails_helper'

RSpec.describe "trucks/index", type: :view do
  before(:each) do
    assign(:trucks, [
      Truck.create!(
        :license_plate => "License Plate",
        :tailgate_up => true,
        :muddy => false
      ),
      Truck.create!(
        :license_plate => "License Plate",
        :tailgate_up => true,
        :muddy => false
      )
    ])
  end

  it "renders a list of trucks" do
    render
    assert_select "tr>td", :text => "License Plate".to_s, :count => 2
    assert_select "tr>td", :text => true.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
