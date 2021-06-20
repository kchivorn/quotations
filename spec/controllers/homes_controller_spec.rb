require 'rails_helper'

RSpec.describe HomesController do
  render_views

  describe 'GET index' do
    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
      expect(response.body).to match(%r{<h1>Currency Exchange Rate</h1>})
      expect(response.body).to match(/<input.* id="start_date"/)
      expect(response.body).to match(/<input.* id="end_date"/)
      expect(response.body).to match(/<input.* id="EUR"/)
      expect(response.body).to match(/<input.* id="USD"/)
      expect(response.body).to match(/<input.* id="AUD"/)
    end
  end
end
