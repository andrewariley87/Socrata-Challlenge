class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :modal

  def modal
    if params[:search_destination]
      @destinations = Destination.search(params[:search_destination])
      if @destinations.blank?
        flash[:notice] = 'We were unable to locate your search results'
        redirect_to :back
      end
    else
    @destinations = Destination.all.order('site ASC')
    end
  end

end
