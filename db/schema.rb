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

ActiveRecord::Schema.define(version: 20160710193616) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "identifier"
    t.string "root_url"
  end

  create_table "ips", force: :cascade do |t|
    t.string "address"
  end

  create_table "parameters", force: :cascade do |t|
    t.string "user_input"
  end

  create_table "payload_requests", force: :cascade do |t|
    t.integer "url_id"
    t.integer "responded_in"
    t.integer "referred_by_id"
    t.integer "request_type_id"
    t.integer "ip_id"
    t.integer "resolution_id"
    t.integer "client_id"
    t.integer "software_agent_id"
    t.integer "parameter_id"
    t.text    "requested_at"
  end

  create_table "referrers", force: :cascade do |t|
    t.string "address"
  end

  create_table "request_types", force: :cascade do |t|
    t.string "verb"
  end

  create_table "resolutions", force: :cascade do |t|
    t.string "width"
    t.string "height"
  end

  create_table "software_agents", force: :cascade do |t|
    t.string   "os"
    t.string   "browser"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "urls", force: :cascade do |t|
    t.string "address"
  end

end
