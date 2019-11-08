class HomeController < ApplicationController
  def index
    @api_data = { "version" => "0.0.4", "author" => "Someone" }
    render :json => @api_data
  end
end
