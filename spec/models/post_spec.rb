require 'rails_helper'

RSpec.describe Post, type: :model do
  context "Associations" do
    context "With Posts" do
      # assert
      it { is_expected.to have_many(:replies).class_name('Post').with_foreign_key('reply_id') }
      it { is_expected.to belong_to(:reply).class_name('Post').optional(true) }
    end
  end
end
