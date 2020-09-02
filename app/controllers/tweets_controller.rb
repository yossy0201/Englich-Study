class TweetsController < ApplicationController
  before_action :set_tweet, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]

  def index
    @tweets = Tweet.includes(:user)
    # @nickname = current_user.nickname
  end

  def show
  end
  
  # def word
  # end

  # def replenishment
  # end

  # def longsentence
  # end

  # def englishconversation
  # end

  # def article
  # end


  private
  def tweet_params
    params.require(:tweet).permit(:image, :text).merge(user_id: current_user.id)
  end

  def set_tweet
    # @tweet = Tweet.find(params[:id]) 
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end

