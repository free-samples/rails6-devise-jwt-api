class UsersController < ApplicationController
  before_action :authenticate_user!
  def current_user_info
    @user = current_user
    render :json => @user
  end
end
