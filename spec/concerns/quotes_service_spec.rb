require 'rails_helper'

RSpec.describe QuotesService do
  describe '#exchange currency' do
    it 'return quotation of BRL' do
      quotes = QuotesService.new(base: 'USD',
                                 start_date: '2021-06-13',
                                 end_date: '2021-06-20')
                            .exchange
      expect(quotes.first[:data].length).to eq(8)
      expect(quotes.first[:data].keys.first).to eq('2021-06-13')
      expect(quotes.first[:data].keys.last).to eq('2021-06-20')
      expect(quotes.first[:name]).to eq('USD')
    end
  end
end
