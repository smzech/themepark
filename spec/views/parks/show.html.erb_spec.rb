require 'rails_helper'

RSpec.describe "parks/show", type: :view do
  before(:each) do
    @park = assign(:park, Park.create!(
      :name => "Name",
      :description => "Description",
      :hours => "Hours",
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Hours/)
    expect(rendered).to match(/Status/)
  end
end
