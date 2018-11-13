class SportsController < ApplicationController

  def index

  end

  def sport_selection
    @user = User.find_by_id(session[:current_user_id])
  end



end
