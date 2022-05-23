class CreateMedia < ActiveRecord::Migration[7.0]
  def change
    create_table :media do |t|
      t.string :name
      t.string :rss_url
      t.string :icon_path

      t.timestamps
    end
  end
end
