class LikesController < ApplicationController
  before_action :set_tweet ,only: [:create, :destroy]
  
  def create
    @tweet.likes.create(user_id: current_user.id)
  end

  def destroy
    like = @tweet.likes.find_by(user_id: current_user.id)
    like.destroy
    @tweet.reload
  end
  
  private
  def set_tweet
    @tweet = Tweet.find(params[:tweet_id])
  end
end
