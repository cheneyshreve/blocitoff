require 'rails_helper'

RSpec.describe UsersController, type: :controller do

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
  end

  describe "GET #show with user not signed in" do

    it "redirects the user to sign in path" do
      get :show
      expect(response).to redirect_to(user_session_path)
    end
  end


end
