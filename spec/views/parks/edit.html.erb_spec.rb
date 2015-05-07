require 'rails_helper'

RSpec.describe "parks/edit", type: :view do
  before(:each) do
    @park = assign(:park, Park.create!(
      :name => "MyString",
      :description => "MyString",
      :hours => "MyString",
      :status => "MyString"
    ))
  end

  it "renders the edit park form" do
    render

    assert_select "form[action=?][method=?]", park_path(@park), "post" do

      assert_select "input#park_name[name=?]", "park[name]"

      assert_select "input#park_description[name=?]", "park[description]"

      assert_select "input#park_hours[name=?]", "park[hours]"

      assert_select "input#park_status[name=?]", "park[status]"
    end
  end
end
