module QuotesHelper
  def stat_by(base, start_date, end_date)
    line_chart exchange_api_quotes_path(base: base, start_date: start_date, end_date: end_date),
               basic_opts(base, start_date, end_date)
  end

  private

  def basic_opts(base, start_date, end_date)
    {
      library: {
        chart: {
          zoomType: 'y'
        },
        title: { text: "BRL Quotation versus #{base}", x: -20 },
        subtitle: { text: "from #{start_date} to #{end_date}", x: -20 },
        yAxis: {
          title: {
            text: 'BRL'
          },
          labels: {
            format: '{value:.4f}'
          },
          tickInterval: 0.02,
          tickAmount: 6,
          max: 6,
          min: 3.5
        },
        credits: {
          enabled: false
        }
      },
      height: '500px',
      round: 4,
      zeros: true
    }
  end
end
