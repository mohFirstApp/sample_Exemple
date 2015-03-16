require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
    it "devrait avoir le titre adéquat" do
      get 'new'
      response.should have_selector("titre", :content => "Inscription")
    end
  end

end
