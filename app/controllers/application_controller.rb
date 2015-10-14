class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :modal

  def modal
    if params[:search_destination]
      @destinations = Destination.search_by_info(params[:search_destination])
    else
    @destinations = Destination.all.order('site ASC')
    end
  end
  
end
