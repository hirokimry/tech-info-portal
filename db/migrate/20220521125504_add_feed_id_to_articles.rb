class AddFeedIdToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :feed_id, :integer
  end
end
