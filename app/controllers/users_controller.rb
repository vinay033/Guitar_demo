class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to :back, :alert => "Access denied."
    end
  end

  def checkout

  end
end
