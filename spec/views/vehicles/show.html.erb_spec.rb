require 'spec_helper'

describe "vehicles/show.html.erb" do
  before(:each) do
    @vehicle = assign(:vehicle, stub_model(Vehicle,
      :vin => 1,
      :make => "Make",
      :model => "Model",
      :plate => "Plate",
      :color => "Color",
      :notes => "MyText",
      :cardinal_owner => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Make/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Model/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Plate/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Color/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
