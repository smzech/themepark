require 'rails_helper'

RSpec.describe "parks/new", type: :view do
  before(:each) do
    assign(:park, Park.new(
      :name => "MyString",
      :description => "MyString",
      :hours => "MyString",
      :status => "MyString"
    ))
  end

  it "renders new park form" do
    render

    assert_select "form[action=?][method=?]", parks_path, "post" do

      assert_select "input#park_name[name=?]", "park[name]"

      assert_select "input#park_description[name=?]", "park[description]"

      assert_select "input#park_hours[name=?]", "park[hours]"

      assert_select "input#park_status[name=?]", "park[status]"
    end
  end
end
