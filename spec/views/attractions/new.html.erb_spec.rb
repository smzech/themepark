require 'rails_helper'

RSpec.describe "attractions/new", type: :view do
  before(:each) do
    assign(:attraction, Attraction.new(
      :name => "MyString",
      :description => "MyString",
      :capacity => "MyString",
      :park => nil,
      :status => "MyString"
    ))
  end

  it "renders new attraction form" do
    render

    assert_select "form[action=?][method=?]", attractions_path, "post" do

      assert_select "input#attraction_name[name=?]", "attraction[name]"

      assert_select "input#attraction_description[name=?]", "attraction[description]"

      assert_select "input#attraction_capacity[name=?]", "attraction[capacity]"

      assert_select "input#attraction_park_id[name=?]", "attraction[park_id]"

      assert_select "input#attraction_status[name=?]", "attraction[status]"
    end
  end
end
