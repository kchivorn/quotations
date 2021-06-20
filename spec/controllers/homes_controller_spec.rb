require 'rails_helper'

RSpec.describe HomesController do
  render_views

  describe 'GET index' do
    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
      expect(response.body).to match(%r{<h1>Currency Exchange Rate</h1>})
    end
  end
end
