require 'rails_helper'
require 'devise'

RSpec.describe User, type: :model do
 let(:my_user){ User.create!(email:"admin@admin.com", password: "password", password_confirmation: "password") }

 it { is_expected.to have_many(:items) }

 describe "attributes" do
   it "responds to email" do
     expect(my_user).to respond_to(:email)
    end

    it "responds to password" do
      expect(my_user).to respond_to(:password)
    end

    it "responds to password_confirmation" do
      expect(my_user).to respond_to(:password_confirmation)
    end
 end


end
