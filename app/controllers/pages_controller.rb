class PagesController < ApplicationController
  def show
    page = "pages/#{params[:page]}"
    if template_exists? page
      render template: page
    else
      raise ActionController::RoutingError.new("No route matches [GET] \”#{page}\”")
    end
  end
end
