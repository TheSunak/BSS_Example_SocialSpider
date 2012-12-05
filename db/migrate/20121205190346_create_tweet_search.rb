class CreateTweetSearch < ActiveRecord::Migration
  def change
    create_table :tweet_searches do |t|
      t.string :query
    end
  end
end
