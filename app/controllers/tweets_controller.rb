class TweetsController < ApplicationController

  before_action :move_to_index, except: [:index, :show]
  before_action :set_all_phrases, only: [:new, :edit]
  before_action :set_tweet, only: [:destroy, :edit, :update, :show]

  def index
    @tweets = Tweet.includes(:user, :image, :phrases).page(params[:page]).per(5).order("created_at DESC")
  end

  def new
    @tweet = Tweet.new
    @tweet.tweet_phrases.build
    @sample_phrases = { subject: "ぼくは", object: "がっこうに", verb: "いった", impression: "たのしかった" }
    @current_date = DateTime.now.to_s(:date)
  end

  def create
    tweet = current_user.tweets.create(tweet_params)
  end

  def destroy
    if @tweet.user_id == current_user.id
      @tweet.destroy
    end
  end

  def edit
  end

  def update
    if @tweet.user_id == current_user.id
      @tweet.tweet_phrases.each do |phrase|
        phrase.destroy
      end
      @tweet.update(tweet_params)
    end
  end

  def show
    @comments = @tweet.comments.includes(:user)
  end

  private
  def tweet_params
    params.require(:tweet).permit(:image_id, tweet_phrases_attributes: [:phrase_id])
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  def set_all_phrases
    @phrases = Phrase.all
  end

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end
end