class TweetsController < ApplicationController
  def index
    @tweets = Tweet.order(created_at: :desc)
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(message: params[:tweet][:message])
    if @tweet.save
      flash[:notice] = 'ツイートしました。'
      redirect_to '/'
    else
      render 'new'
    end
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    flash[:notice] = '1レコード削除しました'
    redirect_to '/'
  end
end
