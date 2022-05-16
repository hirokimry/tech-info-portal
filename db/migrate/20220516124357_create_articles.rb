class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.integer :article_id
      t.integer :media_id
      t.string :article_title
      t.string :article_url
      t.string :article_image_path
      t.datetime :article_update_datetime
      t.integer :article_access_num

      t.timestamps
    end
  end
end
