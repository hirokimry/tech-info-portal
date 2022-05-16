# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_05_16_124639) do
  create_table "articles", force: :cascade do |t|
    t.integer "article_id"
    t.integer "media_id"
    t.string "article_title"
    t.string "article_url"
    t.string "article_image_path"
    t.datetime "article_update_datetime"
    t.integer "article_access_num"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "homes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "media", force: :cascade do |t|
    t.integer "media_id"
    t.string "media_name"
    t.string "media_top_url"
    t.string "media_icon_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
