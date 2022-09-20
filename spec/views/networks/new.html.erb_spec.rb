require 'rails_helper'

RSpec.describe "networks/new", type: :view do
  before(:each) do
    assign(:network, Network.new(
      is_following: nil,
      being_followed: nil
    ))
  end

  it "renders new network form" do
    render

    assert_select "form[action=?][method=?]", networks_path, "post" do

      assert_select "input[name=?]", "network[is_following_id]"

      assert_select "input[name=?]", "network[being_followed_id]"
    end
  end
end
