class CreateMedia < ActiveRecord::Migration[7.0]
  def change
    create_table :media do |t|
      t.integer :media_id
      t.string :media_name
      t.string :media_top_url
      t.string :media_icon_path

      t.timestamps
    end
  end
end
