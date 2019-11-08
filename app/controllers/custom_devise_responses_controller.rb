class CustomDeviseResponsesController < ApplicationController
  def index
    render :json => {
      :message => "Unauthorized",
    },
    :status => :unauthorized
  end
end
