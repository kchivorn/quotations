module Api
  class QuotesController < ApplicationController
    before_action :set_js_format, only: [:create]

    def exchange
      @quotes = QuotesService.new(quotes_params).exchange
      render json: @quotes
    end

    def create
      @base = params[:commit]
      @start_date = params[:start_date]
      @end_date = params[:end_date]

      respond_to do |format|
        format.js { render :create }
      end
    end

    private

    def quotes_params
      params.permit(:start_date, :end_date, :base)
    end

    def set_js_format
      request.format = 'js'
    end
  end
end
