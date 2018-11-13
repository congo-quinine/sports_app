class UsersController < ApplicationController


    def new
      @new_user = User.new
    end

    def login
      @user = User.find_by(user_params)
      session[:current_user_id] = @user.id
    end


    def create
      @user = User.create(user_params)
      session[:current_user_id] = @user.id
      redirect_to sport_selection_path
    end

    def show
      @user = User.find(params[:id])
    end

    private

    def user_params
      params.require(:user).permit(:name, :password_digest)
    end

end
