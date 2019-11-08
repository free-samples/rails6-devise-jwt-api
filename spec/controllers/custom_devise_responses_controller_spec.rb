require 'rails_helper'

RSpec.describe CustomDeviseResponsesController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:unauthorized)
    end
  end

end
