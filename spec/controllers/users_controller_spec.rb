require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:user) { User.create!(email: "hellobot@bots.com", password: "password", password_confirmation: "password") }
  let(:todo_item) { Item.create!(user: user, name: "thing to do") }


  describe "GET #show with user signed in" do
    before(:each) do
       @request.env["devise.mapping"] = Devise.mappings[:user]
       user = FactoryBot.create(:user)
       sign_in user
     end

    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end

     it "renders the #show view" do
       get :show, params: { id: user.id }
       expect(response).to render_template :show
     end

     it "assigns items to @items" do
       get :show, params: { id: user.id }
       expect(assigns(:items)).to eq(user.items)
     end


  end

  describe "GET #show with user not signed in" do
    it "redirects the user to sign in path" do
      get :show
      expect(response).to redirect_to(user_session_path)
    end
  end


end
