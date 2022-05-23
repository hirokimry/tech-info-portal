class RenemeMediaIdColumnToArticles < ActiveRecord::Migration[7.0]
  def change
    rename_column :articles, :media_id, :medium_id
  end
end
