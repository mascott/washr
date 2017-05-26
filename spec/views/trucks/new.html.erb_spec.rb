require 'rails_helper'

RSpec.describe "trucks/new", type: :view do
  before(:each) do
    assign(:truck, Truck.new(
      :license_plate => "MyString",
      :tailgate_up => true,
      :muddy => false
    ))
  end

  it "renders new truck form" do
    render

    assert_select "form[action=?][method=?]", trucks_path, "post" do

      assert_select "input#truck_license_plate[name=?]", "truck[license_plate]"

      assert_select "input#truck_tailgate_up[name=?]", "truck[tailgate_up]"

      assert_select "input#truck_muddy[name=?]", "truck[muddy]"
    end
  end
end
