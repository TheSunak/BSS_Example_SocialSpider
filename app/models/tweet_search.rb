class TweetSearch < ActiveRecord::Base
  validates :query, presence: true

  attr_accessible :query

  def execute!
    @search = Twitter.search(query)
    #HEre is where you would persist the seach results into a MogoDB using mongoid
    #search_result.create @search
    #Retuns the search resutl
  end

  def results
    @search.results
  end
end
