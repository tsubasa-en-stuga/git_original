class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @tweets = user.tweets.includes(:image, :phrases).page(params[:page]).per(5).order("created_at DESC")
  end
end