require 'rails_helper'

RSpec.describe Api::QuotesController do
  describe 'GET exchange' do
    it 'assigns @quotes' do
      get :exchange,
          params: { start_date: '2021-06-13',
                    end_date: '2021-06-20',
                    base: 'USD' }
      expect(assigns(:quotes).first[:data].keys.length).to eq(8)
      expect(assigns(:quotes).first[:name]).to eq('USD')
    end

    it 'renders json' do
      get :exchange
      expect(response.content_type).to eq 'application/json; charset=utf-8'
    end
  end

  describe 'POST create' do
    it 'responds to custom format when it is set in the params' do
      post :create,
           params: { start_date: '2021-06-13',
                     end_date: '2021-06-20',
                     base: 'USD' }

      expect(response.status).to eq(200)
      expect(response.media_type).to eq 'text/javascript'
    end
  end
end
