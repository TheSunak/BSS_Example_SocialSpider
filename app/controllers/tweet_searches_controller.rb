class TweetSearchesController < ApplicationController
  def new
    @tweet_search = TweetSearch.new
  end

  def create
    @tweet_search = TweetSearch.new params[:tweet_search]

    if @tweet_search.save
      @tweet_search.execute!

      render :show
    else
      render :new
    end
  end
end
