class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?
  before_action :update_basic_analytics
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
  end

  private

  def update_basic_analytics
    assign_visitor
    check_referer
    @visitor.update(page_views: @visitor.page_views + 1)
  end

  def check_referer
    unless ( request.referer && request.referer.include?("localhost") ) #whispering-mountain-3816
      @visitor.update(visits: @visitor.visits + 1)
    end
  end

  def assign_visitor
    @visitor = Visitor.where(ip: request.remote_ip).first
    @visitor ||= Visitor.create(ip: request.remote_ip, visits: 0, page_views: 0)
  end
end


