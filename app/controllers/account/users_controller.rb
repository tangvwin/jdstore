class Account::UsersController < ApplicationController

  def index

    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to account_users_path
    else
    render :edit
  end
end

  def create
    @user = User.new
    if @user.save
      redirect_to account_users_path
    else
      render :new
    end
  end



  private

  def user_params
    params.require(:user).permit(:name, :email, :profile)
  end
end
