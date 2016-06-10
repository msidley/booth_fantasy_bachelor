class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @picked_contestants = @user.picked_contestants.all
  end

  def lockin
    @user = User.find(params[:id])
    @user.user_img = "true"
    @user.save
    if @user.save
      redirect_to "/", :notice => "Fantasy contestants locked-in."
    else
      render 'fantasy_contestants/new'
    end
  end

end
