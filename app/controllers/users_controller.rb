class UsersController < ApplicationController


    def new
      @user = User.new
    end

    def create
      @user = User.create(user_params)
      redirect_to '/login'
    end

    def show
      @user = User.find(session[:user_id])

      if @user.sports.length == 0
        redirect_to "/sport_selection"
      end

    end

    def update
      @user = User.find(session[:user_id])
      for i in 0..params[:user][:sport_ids].length
        @user.user_sports.create(user_id: @user.id, sport_id: params[:user][:sport_ids][i])
      end
      redirect_to @user
    end

    private


    def user_params
      params.require(:user).permit(:email, :password, sport_ids: [])
    end

end
