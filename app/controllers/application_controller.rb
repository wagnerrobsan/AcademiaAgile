class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'

  def index
    render "/index"
  end

end
