class SportsController < ApplicationController

  def index

  end

  def sport_selection
      @user = User.find(session[:user_id])
  end



end
