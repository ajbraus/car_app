require 'spec_helper'

describe "customers/edit.html.erb" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
      :firstname => "MyString",
      :lastname => "MyString",
      :email => "MyString",
      :street_line_1 => "MyString",
      :street_line_2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => 1,
      :cell_phone => 1,
      :home_phone => 1,
      :work_phone => 1,
      :notes => "MyText",
      :recieve_text => false,
      :recieve_email => false
    ))
  end

  it "renders the edit customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => customers_path(@customer), :method => "post" do
      assert_select "input#customer_firstname", :name => "customer[firstname]"
      assert_select "input#customer_lastname", :name => "customer[lastname]"
      assert_select "input#customer_email", :name => "customer[email]"
      assert_select "input#customer_street_line_1", :name => "customer[street_line_1]"
      assert_select "input#customer_street_line_2", :name => "customer[street_line_2]"
      assert_select "input#customer_city", :name => "customer[city]"
      assert_select "input#customer_state", :name => "customer[state]"
      assert_select "input#customer_zip", :name => "customer[zip]"
      assert_select "input#customer_cell_phone", :name => "customer[cell_phone]"
      assert_select "input#customer_home_phone", :name => "customer[home_phone]"
      assert_select "input#customer_work_phone", :name => "customer[work_phone]"
      assert_select "textarea#customer_notes", :name => "customer[notes]"
      assert_select "input#customer_recieve_text", :name => "customer[recieve_text]"
      assert_select "input#customer_recieve_email", :name => "customer[recieve_email]"
    end
  end
end
