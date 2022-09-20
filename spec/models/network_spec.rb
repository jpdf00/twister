require 'rails_helper'

RSpec.describe Network, type: :model do
  context "Associations" do
    context "With User" do
      # assert
      it { is_expected.to belong_to(:is_following).class_name('User') }
      it { is_expected.to belong_to(:being_followed).class_name('User') }
    end
  end
end
