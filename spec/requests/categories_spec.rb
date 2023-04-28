require 'rails_helper'

RSpec.describe 'Categories', type: :request do
  describe 'GET /new' do
    it 'returns http success' do
      get '/categories/new'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /create' do
    it 'returns http success' do
      get '/categories/create'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /destroy' do
    it 'returns http success' do
      get '/categories/destroy'
      expect(response).to have_http_status(:success)
    end
  end
end
