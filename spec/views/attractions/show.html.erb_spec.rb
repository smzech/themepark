require 'rails_helper'

RSpec.describe "attractions/show", type: :view do
  before(:each) do
    @attraction = assign(:attraction, Attraction.create!(
      :name => "Name",
      :description => "Description",
      :capacity => "Capacity",
      :park => nil,
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Capacity/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Status/)
  end
end
