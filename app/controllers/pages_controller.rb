class PagesController < ApplicationController
  def home
    render template: "pages/home"
  end

  def show
    page = "pages/#{params[:page]}"
    if template_exists? page
      render template: page
    else
      raise ActionController::RoutingError.new("No route matches [GET] \”#{page}\”")
    end
  end
end
