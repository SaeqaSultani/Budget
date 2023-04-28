require 'rails_helper'

RSpec.describe 'Transactions', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/transaction/index'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /create' do
    it 'returns http success' do
      get '/transaction/create'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /new' do
    it 'returns http success' do
      get '/transaction/new'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /destroy' do
    it 'returns http success' do
      get '/transaction/destroy'
      expect(response).to have_http_status(:success)
    end
  end
end
