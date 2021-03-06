# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_200_203_235_017) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'conditions', force: :cascade do |t|
    t.string 'name'
    t.text 'description'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'drug_ranges', force: :cascade do |t|
    t.numrange 'dose'
    t.int4range 'frequency'
    t.bigint 'drug_id'
    t.bigint 'condition_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['condition_id'], name: 'index_drug_ranges_on_condition_id'
    t.index ['drug_id'], name: 'index_drug_ranges_on_drug_id'
  end

  create_table 'drugs', force: :cascade do |t|
    t.string 'generic_name'
    t.text 'description'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'prescriptions', force: :cascade do |t|
    t.string 'first_name'
    t.string 'last_name'
    t.float 'dose'
    t.integer 'frequency'
    t.text 'additional_notes'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.bigint 'drug_id', null: false
    t.string 'condition_name'
    t.index ['drug_id'], name: 'index_prescriptions_on_drug_id'
  end

  add_foreign_key 'prescriptions', 'drugs'
end
