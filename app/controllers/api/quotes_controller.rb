module Api
  class QuotesController < ApplicationController
    def exchange
      @quotes = QuotesService.new(quotes_params).exchange
      render json: @quotes
    end

    private

    def quotes_params
      params.permit(:start_date, :end_date, :base)
    end
  end
end
