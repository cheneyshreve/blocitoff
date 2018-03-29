require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  let(:my_user){ User.create!(email:"admin_user@admin.com", password: "password", password_confirmation: "password") }
  let(:my_item) {Item.create!(user: my_user, name: "to-do item") }

  describe "POST create" do
    it "assigns a new item to @item" do
      post :create, params: {item: { name: "to-do item" } }
      expect(assigns(:item)).to eq Item.last
    end

    it "returns http redirect" do
      post :create, params: { item: { name: "to-do item"} }
      expect(response).to redirect_to(user_session_path)
    end

  end


end
