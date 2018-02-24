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

ActiveRecord::Schema.define(version: 20180224204134) do

  create_table "destinations", force: :cascade do |t|
    t.string "name"
    t.float "x"
    t.float "y"
    t.float "coeff_touristic"
  end

  create_table "placetobes", force: :cascade do |t|
    t.string "name"
    t.float "cost"
    t.string "description"
    t.integer "mark"
  end

  create_table "planets", force: :cascade do |t|
    t.string "name"
    t.string "weather"
    t.string "description"
    t.string "galaxy"
    t.binary "thumbnail"
  end

  create_table "simulations", force: :cascade do |t|
    t.float "coeffPeople"
    t.float "coeffAccomodation"
    t.float "coeffGuide"
    t.float "coeffFood"
    t.float "coeffOut"
  end

  create_table "transports", force: :cascade do |t|
    t.string "name"
    t.float "quality_coeff"
    t.float "max_dist"
  end

  create_table "travels", force: :cascade do |t|
    t.float "budget_base"
    t.float "budget_remaining"
  end

end
