require 'rails_helper'

RSpec.describe "parks/index", type: :view do
  before(:each) do
    assign(:parks, [
      Park.create!(
        :name => "Name",
        :description => "Description",
        :hours => "Hours",
        :status => "Status"
      ),
      Park.create!(
        :name => "Name",
        :description => "Description",
        :hours => "Hours",
        :status => "Status"
      )
    ])
  end

  it "renders a list of parks" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Hours".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
