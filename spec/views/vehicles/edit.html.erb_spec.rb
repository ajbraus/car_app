require 'spec_helper'

describe "vehicles/edit.html.erb" do
  before(:each) do
    @vehicle = assign(:vehicle, stub_model(Vehicle,
      :vin => 1,
      :make => "MyString",
      :model => "MyString",
      :plate => "MyString",
      :color => "MyString",
      :notes => "MyText",
      :cardinal_owner => 1
    ))
  end

  it "renders the edit vehicle form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => vehicles_path(@vehicle), :method => "post" do
      assert_select "input#vehicle_vin", :name => "vehicle[vin]"
      assert_select "input#vehicle_make", :name => "vehicle[make]"
      assert_select "input#vehicle_model", :name => "vehicle[model]"
      assert_select "input#vehicle_plate", :name => "vehicle[plate]"
      assert_select "input#vehicle_color", :name => "vehicle[color]"
      assert_select "textarea#vehicle_notes", :name => "vehicle[notes]"
      assert_select "input#vehicle_cardinal_owner", :name => "vehicle[cardinal_owner]"
    end
  end
end
