require 'rails_helper'

RSpec.describe "GroupCategories", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/group_categories/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/group_categories/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/group_categories/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/group_categories/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/group_categories/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
