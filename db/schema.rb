# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_220_417_132_433) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'follower_sayings', force: :cascade do |t|
    t.bigint 'kojirase_result_id', null: false
    t.integer 'follower_point', null: false
    t.string 'message', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['kojirase_result_id'], name: 'index_follower_sayings_on_kojirase_result_id'
  end

  create_table 'kojirase_results', force: :cascade do |t|
    t.integer 'level', null: false
    t.string 'name', null: false
    t.string 'description', null: false
    t.string 'advice', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  add_foreign_key 'follower_sayings', 'kojirase_results'
end
