require 'rails_helper'

RSpec.describe "Plants", type: :request do
  describe "GET /create" do
    it "returns http success" do
      get "/plants/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /index" do
    it "returns http success" do
      get "/plants/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/plants/show"
      expect(response).to have_http_status(:success)
    end
  end

end
