class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.integer :medium_id
      t.string :title
      t.string :url
      t.string :image_path
      t.datetime :publication_date
      t.integer :access_count, default: 0

      t.timestamps
    end
  end
end
