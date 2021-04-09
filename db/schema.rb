# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_09_161847) do

  create_table "authors", force: :cascade do |t|
    t.string "user"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "eightballs", force: :cascade do |t|
    t.string "name"
    t.string "ans1"
    t.string "ans2"
    t.string "ans3"
    t.string "ans4"
    t.string "ans5"
    t.string "ans6"
    t.string "ans7"
    t.string "ans8"
    t.string "ans9"
    t.string "ans10"
    t.string "ans11"
    t.string "ans12"
    t.string "ans13"
    t.string "ans14"
    t.string "ans15"
    t.string "ans16"
    t.string "ans17"
    t.string "ans18"
    t.string "ans19"
    t.string "ans20"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "author"
  end

end
