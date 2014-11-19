# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20141119021002) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "organizations", force: true do |t|
    t.string   "name"
    t.string   "address_street"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "crunchbase_uuid"
    t.integer  "Org_Types_id"
    t.string   "sector_type"
    t.string   "strat_org_constituent_type"
    t.string   "description"
    t.string   "web_url"
    t.string   "parent_or_child_org"
    t.integer  "parent_org_id"
    t.string   "size_revenue"
    t.string   "size_employees_structured"
    t.string   "vision"
    t.string   "mission"
    t.string   "goals"
    t.string   "values"
    t.string   "motto_or_tagline"
    t.string   "hq_address_city"
    t.string   "hq_address_state"
    t.string   "hq_address_zip"
    t.string   "hq_telephone"
    t.string   "hq_email"
    t.string   "region_headquartered_in"
    t.datetime "date_org_founded"
    t.string   "social_twitter"
    t.string   "social_linkedin"
    t.string   "social_facebook"
    t.string   "social_googleplus"
    t.string   "social_youtube"
    t.string   "social_platform_dominant"
    t.string   "org_special_designations"
    t.string   "logo_file_name"
    t.string   "logo_file_type"
    t.string   "is_verified_by_staff"
    t.string   "is_verified_by_thirdparty"
    t.string   "exec_comments_on_org"
    t.string   "staff_comments_on_org"
    t.integer  "created_by_exec_id"
    t.string   "certifications"
    t.string   "source_original"
    t.string   "is_active"
  end

end
