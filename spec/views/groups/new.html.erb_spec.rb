require 'rails_helper'

RSpec.describe "groups/new", :type => :view do
  before(:each) do
    assign(:group, Group.new(
      :title => "MyString",
      :description => "MyString",
      :url => "MyString"
    ))
  end

  it "renders new group form" do
    render

    assert_select "form[action=?][method=?]", groups_path, "post" do

      assert_select "input#group_title[name=?]", "group[title]"

      assert_select "input#group_description[name=?]", "group[description]"

      assert_select "input#group_url[name=?]", "group[url]"
    end
  end
end
