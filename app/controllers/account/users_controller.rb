class Account::UsersController < ApplicationController

  private

  def user_params
    params.require(:user).permit(:name, :email, :profile)
  end
end
