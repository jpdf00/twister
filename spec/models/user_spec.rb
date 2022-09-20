require 'rails_helper'

RSpec.describe User, type: :model do
  context "Associations" do
    context "With Network" do
      # assert
      it { is_expected.to have_many(:is_followings).class_name('Network').with_foreign_key('is_following_id') }
      it { is_expected.to have_many(:being_followeds).class_name('Network').with_foreign_key('being_followed_id') }
      it { is_expected.to have_many(:followers).through(:being_followeds).source(:is_following) }
      it { is_expected.to have_many(:followings).through(:is_followings).source(:being_followed) } 
    end
  end

  context "Validations" do
    context "For username" do
      # assert
      it { is_expected.to validate_presence_of(:username) }
    end

    context "For email" do
      # assert
      it { is_expected.to validate_presence_of(:email) }
    end
    
    context "For password" do
      # assert
      it { is_expected.to validate_presence_of :password }
      it { is_expected.to validate_length_of(:password).is_at_least(8) }
      it { is_expected.to validate_length_of(:password).is_at_most(128) }
    end
  end
end
