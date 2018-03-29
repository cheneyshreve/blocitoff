require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  let(:my_user){ User.create!(email:"admin_user@admin.com", password: "password", password_confirmation: "password") }
  let(:my_item) {Item.create!(name: "first to-do item", user: my_user) }

  describe "POST create" do
    before(:each) do
       @request.env["devise.mapping"] = Devise.mappings[:user]
       user = FactoryBot.create(:user)
       sign_in user
    end

    it "creates a new to-do item for the user" do
      post :create, params: {id: my_item.id, items: {name: my_item.name, user: my_item.user_id } }
      expect(assigns(:items)).to change(Item, :count).by(1)
    end
  end


end
