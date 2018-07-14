class TweetsController < ApplicationController

  before_action :move_to_index, except: [:index, :show]

  def index
    @tweets = Tweet.includes(:user).page(params[:page]).per(5).order("created_at DESC")
  end

  def new
    @tweet = Tweet.new
    @phrases = Phrase.all
  end

  def create
    tweet = current_user.tweets.create(image: tweet_params[:image])
    tweet.tweet_phrases.create(phrase_id: tweet_params[:tweet_phrase][:subject_id])
    tweet.tweet_phrases.create(phrase_id: tweet_params[:tweet_phrase][:object_id])
    tweet.tweet_phrases.create(phrase_id: tweet_params[:tweet_phrase][:verb_id])
    tweet.tweet_phrases.create(phrase_id: tweet_params[:tweet_phrase][:impression_id])
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
     params.require(:tweet).permit(:image, tweet_phrase: [:subject_id, :object_id, :verb_id, :impression_id])
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end