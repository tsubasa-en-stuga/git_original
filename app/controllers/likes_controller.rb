class LikesController < ApplicationController
  def create
    @tweet = Tweet.find(params[:tweet_id])
    @like = @tweet.likes.create(user_id: current_user.id)
    @likes = @tweet.likes
  end

  def destroy
    @tweet = Tweet.find(params[:tweet_id])
    like = @tweet.likes.find_by(user_id: current_user.id)
    like.destroy
    @tweet.reload
    @likes = @tweet.likes
  end
end
