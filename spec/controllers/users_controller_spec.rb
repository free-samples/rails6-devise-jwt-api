require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #current_user_info" do
    it "returns http success" do
      get :current_user_info
      expect(response).to have_http_status(:success)
    end
  end

end
