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

ActiveRecord::Schema[7.0].define(version: 2023_02_28_122454) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animes", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.bigint "collection_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.string "poster"
    t.string "description"
    t.string "status"
    t.string "startDate"
    t.float "episodes"
    t.string "anime_id"
    t.index ["collection_id"], name: "index_animes_on_collection_id"
  end

  create_table "collections", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_collections_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "body"
    t.bigint "user_id", null: false
    t.bigint "post_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_comments_on_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "mangas", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.bigint "collection_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.string "poster"
    t.string "description"
    t.string "status"
    t.string "startDate"
    t.string "manga_id"
    t.float "chapterCount"
    t.index ["collection_id"], name: "index_mangas_on_collection_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "body"
    t.bigint "user_id", null: false
    t.bigint "anime_id", null: false
    t.bigint "manga_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["anime_id"], name: "index_posts_on_anime_id"
    t.index ["manga_id"], name: "index_posts_on_manga_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "animes", "collections"
  add_foreign_key "collections", "users"
  add_foreign_key "comments", "posts"
  add_foreign_key "comments", "users"
  add_foreign_key "mangas", "collections"
  add_foreign_key "posts", "animes"
  add_foreign_key "posts", "mangas"
  add_foreign_key "posts", "users"
end
