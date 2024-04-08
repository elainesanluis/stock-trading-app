class DashboardController < ApplicationController
  def index
    @user_stocks = current_user
  end
end