class SportsController < ApplicationController

  def index

  end

  def sport_selection
      @user = User.find(session[:user_id])
  end

  def update_sport
    @user = User.find(session[:user_id])
    @user.user_sports.destroy_all
    @user.you_tubes.destroy_all
    redirect_to "/sport_selection"
  end



end
