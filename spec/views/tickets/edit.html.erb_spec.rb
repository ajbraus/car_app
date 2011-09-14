require 'spec_helper'

describe "tickets/edit.html.erb" do
  before(:each) do
    @ticket = assign(:ticket, stub_model(Ticket,
      :priority => "MyString",
      :priorities_mask => 1,
      :state => "MyString",
      :notes => "MyText",
      :invoice_remarks => "MyText",
      :technician => "MyString",
      :waiting => false,
      :vehicle => ""
    ))
  end

  it "renders the edit ticket form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tickets_path(@ticket), :method => "post" do
      assert_select "input#ticket_priority", :name => "ticket[priority]"
      assert_select "input#ticket_priorities_mask", :name => "ticket[priorities_mask]"
      assert_select "input#ticket_state", :name => "ticket[state]"
      assert_select "textarea#ticket_notes", :name => "ticket[notes]"
      assert_select "textarea#ticket_invoice_remarks", :name => "ticket[invoice_remarks]"
      assert_select "input#ticket_technician", :name => "ticket[technician]"
      assert_select "input#ticket_waiting", :name => "ticket[waiting]"
      assert_select "input#ticket_vehicle", :name => "ticket[vehicle]"
    end
  end
end
