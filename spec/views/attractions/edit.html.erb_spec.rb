require 'rails_helper'

RSpec.describe "attractions/edit", type: :view do
  before(:each) do
    @attraction = assign(:attraction, Attraction.create!(
      :name => "MyString",
      :description => "MyString",
      :capacity => "MyString",
      :park => nil,
      :status => "MyString"
    ))
  end

  it "renders the edit attraction form" do
    render

    assert_select "form[action=?][method=?]", attraction_path(@attraction), "post" do

      assert_select "input#attraction_name[name=?]", "attraction[name]"

      assert_select "input#attraction_description[name=?]", "attraction[description]"

      assert_select "input#attraction_capacity[name=?]", "attraction[capacity]"

      assert_select "input#attraction_park_id[name=?]", "attraction[park_id]"

      assert_select "input#attraction_status[name=?]", "attraction[status]"
    end
  end
end
