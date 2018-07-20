class TweetsController < ApplicationController

  before_action :move_to_index, except: [:index, :show]

  def index
    @tweets = Tweet.includes(:user).page(params[:page]).per(5).order("created_at DESC")
  end

  def new
    @tweet = Tweet.new
    @tweet.tweet_phrases.build
    @phrases = Phrase.all
  end

  def create
    tweet = current_user.tweets.create(tweet_params)
  end

  def destroy
    tweet = Tweet.find(params[:id])
    if tweet.user_id == current_user.id
      tweet.destroy
    end
  end
  
  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    tweet = Tweet.find(params[:id])
    if tweet.user_id == current_user.id
      tweet.update(tweet_params)
    end
  end
  
  def show
    @tweet = Tweet.find(params[:id])
    @comments = @tweet.comments.includes(:user)
  end

  private
  def tweet_params
     params.require(:tweet).permit(:image, tweet_phrases_attributes: [:phrase_id])
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end