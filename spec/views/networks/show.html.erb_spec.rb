require 'rails_helper'

RSpec.describe "networks/show", type: :view do
  before(:each) do
    @network = assign(:network, Network.create!(
      is_following: nil,
      being_followed: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
