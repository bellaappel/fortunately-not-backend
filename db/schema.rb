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

ActiveRecord::Schema.define(version: 2021_04_14_190612) do

  create_table "creators", force: :cascade do |t|
    t.string "name"
  end

  create_table "eightballs", force: :cascade do |t|
    t.string "name"
    t.integer "creator_id"
    t.string "pos"
    t.string "neg"
    t.string "vague"
    t.index ["neg"], name: "index_eightballs_on_neg"
    t.index ["pos"], name: "index_eightballs_on_pos"
    t.index ["vague"], name: "index_eightballs_on_vague"
  end

end
