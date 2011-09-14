require 'spec_helper'

describe "vehicles/index.html.erb" do
  before(:each) do
    assign(:vehicles, [
      stub_model(Vehicle,
        :vin => 1,
        :make => "Make",
        :model => "Model",
        :plate => "Plate",
        :color => "Color",
        :notes => "MyText",
        :cardinal_owner => 1
      ),
      stub_model(Vehicle,
        :vin => 1,
        :make => "Make",
        :model => "Model",
        :plate => "Plate",
        :color => "Color",
        :notes => "MyText",
        :cardinal_owner => 1
      )
    ])
  end

  it "renders a list of vehicles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Make".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Plate".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
