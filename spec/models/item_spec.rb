require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:my_user){ User.create!(email:"admin_user@admin.com", password: "password", password_confirmation: "password") }
  let(:item) {Item.create!(name: "first to-do item", user: my_user) }

  it { is_expected.to belong_to(:user) }

  describe "attributes" do
    it "should have a name attribute" do
      expect(item).to have_attributes(name: item.name)
    end
  end

end
