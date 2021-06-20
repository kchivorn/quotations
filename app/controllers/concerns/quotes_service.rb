class QuotesService
  include HTTParty
  base_uri 'https://api.exchangerate.host'
  default_params symbols: 'BRL'

  def initialize(options = {})
    @options = { query: options.merge(self.class.default_params).to_h.symbolize_keys }
  end

  def exchange
    rates = self.class.get('/timeseries', @options)['rates']
    symbols = @options[:query][:symbols]
    data = rates.map { |day, value| [day, value[symbols]] }.to_h
    [{ name: @options[:query][:base], data: data }]
  end
end
