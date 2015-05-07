require 'rails_helper'

RSpec.describe "attractions/index", type: :view do
  before(:each) do
    assign(:attractions, [
      Attraction.create!(
        :name => "Name",
        :description => "Description",
        :capacity => "Capacity",
        :park => nil,
        :status => "Status"
      ),
      Attraction.create!(
        :name => "Name",
        :description => "Description",
        :capacity => "Capacity",
        :park => nil,
        :status => "Status"
      )
    ])
  end

  it "renders a list of attractions" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Capacity".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
