class UsersController < ApplicationController
   skip_before_action :verify_authenticity_token, only: [:new,:create]
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, notice: 'User created successfully!'
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end
end

