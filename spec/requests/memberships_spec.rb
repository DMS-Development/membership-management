require 'rails_helper'

RSpec.describe "Memberships", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/memberships/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/memberships/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/memberships/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/memberships/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/memberships/show"
      expect(response).to have_http_status(:success)
    end
  end

end
