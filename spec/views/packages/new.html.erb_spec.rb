require 'spec_helper'

describe "packages/new" do
  before(:each) do
    assign(:package, stub_model(Package,
      :name => "MyString",
      :notes => "MyString"
    ).as_new_record)
  end

  it "renders new package form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => packages_path, :method => "post" do
      assert_select "input#package_name", :name => "package[name]"
      assert_select "input#package_notes", :name => "package[notes]"
    end
  end
end
