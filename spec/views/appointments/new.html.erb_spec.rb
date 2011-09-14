require 'spec_helper'

describe "appointments/new.html.erb" do
  before(:each) do
    assign(:appointment, stub_model(Appointment,
      :state => "MyString",
      :notes => "MyText",
      :vehicle => nil
    ).as_new_record)
  end

  it "renders new appointment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => appointments_path, :method => "post" do
      assert_select "input#appointment_state", :name => "appointment[state]"
      assert_select "textarea#appointment_notes", :name => "appointment[notes]"
      assert_select "input#appointment_vehicle", :name => "appointment[vehicle]"
    end
  end
end
