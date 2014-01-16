class DashboardController < ApplicationController
  def show
  @visitors = Visitor.all
  @total_visitors = Visitor.all.count
  @visits = count_visits
  @page_views = count_page_views
  end

  private

  def count_visits
    total = 0
    @visitors.each do |v|
      total += v.visits
    end
    total
  end

  def count_page_views
    total = 0
    @visitors.each do |v|
      total += v.page_views
    end
    total
  end
end