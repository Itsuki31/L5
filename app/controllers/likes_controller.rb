class LikesController < ApplicationController
  
  def create
    tweet = Tweet.find(params[:tweet_id])
    user = User.find_by(uid: session[:login_uid])
    
    if user.nil?
      flash[:notice] = 'ユーザーが見つかりません。'
      redirect_to root_path and return
    end
    
    user.like_tweets << tweet
    redirect_to root_path
  end
  
  def destroy
    tweet = Tweet.find(params[:id])
    user = User.find_by(uid: session[:login_uid])
    
    if user.nil?
      flash[:notice] = 'ユーザーが見つかりません。'
      redirect_to root_path and return
    end
    
    tweet.likes.find_by(user_id: user.id).destroy
    redirect_to root_path
  end
end