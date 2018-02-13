# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180210143331) do

  create_table "groceries", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.integer "rare"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipe_foods", force: :cascade do |t|
    t.integer "recipe_id"
    t.integer "food_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_id"], name: "index_recipe_foods_on_food_id"
    t.index ["recipe_id"], name: "index_recipe_foods_on_recipe_id"
  end

  create_table "recipe_groceries", force: :cascade do |t|
    t.integer "recipe_id"
    t.integer "grocery_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grocery_id"], name: "index_recipe_groceries_on_grocery_id"
    t.index ["recipe_id"], name: "index_recipe_groceries_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
