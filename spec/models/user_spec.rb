require 'rails_helper'

RSpec.describe User, type: :model do
  context "username" do
    # assert
    it { is_expected.to validate_presence_of :username }
  end

  context "email" do
    # assert
    it { is_expected.to validate_presence_of :email }
  end

  context "password" do
    # assert
    it { is_expected.to validate_presence_of :password }
    it { is_expected.to validate_length_of(:password).is_at_least(8) }
    it { is_expected.to validate_length_of(:password).is_at_most(128) }
  end
end
