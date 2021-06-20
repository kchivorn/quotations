class HomesController < ApplicationController
  before_action :set_default_params, only: [:index]

  def index; end

  private

  def set_default_params
    @start_date ||= 7.days.ago.midnight.strftime('%Y-%m-%d')
    @end_date ||= Time.current.at_end_of_day.strftime('%Y-%m-%d')
    @base ||= 'USD'
  end
end
