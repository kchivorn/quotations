module ApplicationHelper
  def today
    Time.now.strftime('%Y-%m-%d')
  end
end
