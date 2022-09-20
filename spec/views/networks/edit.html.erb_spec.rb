require 'rails_helper'

RSpec.describe "networks/edit", type: :view do
  before(:each) do
    @network = assign(:network, Network.create!(
      is_following: nil,
      being_followed: nil
    ))
  end

  it "renders the edit network form" do
    render

    assert_select "form[action=?][method=?]", network_path(@network), "post" do

      assert_select "input[name=?]", "network[is_following_id]"

      assert_select "input[name=?]", "network[being_followed_id]"
    end
  end
end
