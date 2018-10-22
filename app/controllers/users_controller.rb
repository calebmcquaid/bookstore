class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    current_user
  end

  def create
    @user = User.new(params[:user][:name][:email])
    if @user.save
      redirect_to @user, alert: "User created successfully."
    else
      redirect_to new_user_path, alert: "Error creating user."
    end
  end

  def update
  end
end

private

def current_user
  params.require(:user).permit(:name, :email)
end
