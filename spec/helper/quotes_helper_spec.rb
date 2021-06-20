require 'rails_helper'

RSpec.describe QuotesHelper, type: :helper do
  describe '#stat_by' do
    it 'returns the chart' do
      expect(helper.stat_by('USD', '2021-06-13', '2021-06-20')).to match(/<div id="chart-1"/)
      expect(helper.stat_by('USD', '2021-06-13', '2021-06-20')).to match(/BRL Quotation versus USD/)
      expect(helper.stat_by('USD', '2021-06-13', '2021-06-20')).to match(/from 2021-06-13 to 2021-06-20/)
    end
  end
end
