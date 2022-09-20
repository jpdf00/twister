require 'rails_helper'

RSpec.describe "networks/index", type: :view do
  before(:each) do
    assign(:networks, [
      Network.create!(
        is_following: nil,
        being_followed: nil
      ),
      Network.create!(
        is_following: nil,
        being_followed: nil
      )
    ])
  end

  it "renders a list of networks" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
