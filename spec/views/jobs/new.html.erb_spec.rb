require 'spec_helper'

describe "jobs/new.html.erb" do
  before(:each) do
    assign(:job, stub_model(Job,
      :concern => "MyText",
      :cause => "MyText",
      :correction => "MyText",
      :state => "MyString",
      :sorted => 1,
      :notes => "MyText",
      :ticket => ""
    ).as_new_record)
  end

  it "renders new job form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => jobs_path, :method => "post" do
      assert_select "textarea#job_concern", :name => "job[concern]"
      assert_select "textarea#job_cause", :name => "job[cause]"
      assert_select "textarea#job_correction", :name => "job[correction]"
      assert_select "input#job_state", :name => "job[state]"
      assert_select "input#job_sorted", :name => "job[sorted]"
      assert_select "textarea#job_notes", :name => "job[notes]"
      assert_select "input#job_ticket", :name => "job[ticket]"
    end
  end
end
