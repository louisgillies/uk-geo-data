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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120303213806) do

  create_table "adjacent_localities", :force => true do |t|
    t.string   "nptg_locality_code",          :limit => 8
    t.string   "adjacent_nptg_locality_code", :limit => 8
    t.datetime "creation_date_time"
    t.datetime "modification_date_time"
    t.integer  "revision_number"
    t.text     "modification"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  create_table "admin_areas", :force => true do |t|
    t.integer  "administrative_area_code"
    t.integer  "atco_area_code"
    t.text     "area_name"
    t.text     "area_name_lang"
    t.text     "short_name"
    t.text     "short_name_lang"
    t.string   "country",                        :limit => 3
    t.string   "region_code",                    :limit => 2
    t.integer  "maximum_length_for_short_names"
    t.integer  "national"
    t.text     "contact_email"
    t.text     "contact_telephone"
    t.datetime "creation_date_time"
    t.datetime "modification_date_time"
    t.integer  "revision_number"
    t.text     "modification"
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
  end

  create_table "districts", :force => true do |t|
    t.integer  "district_code"
    t.text     "district_name"
    t.text     "district_lang"
    t.integer  "administrative_area_code"
    t.integer  "district_area_code"
    t.datetime "creation_date_time"
    t.datetime "modification_date_time"
    t.integer  "revision_number"
    t.text     "modification"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "localities", :force => true do |t|
    t.string   "nptg_locality_code",       :limit => 8
    t.text     "locality_name"
    t.string   "locality_name_lang",       :limit => 2
    t.text     "short_name"
    t.string   "short_name_lang",          :limit => 2
    t.text     "qualifier_name"
    t.string   "qualifier_name_lang"
    t.text     "qualifier_locality_ref"
    t.text     "qualifier_district_ref"
    t.integer  "administrative_area_code"
    t.integer  "nptg_district_code"
    t.text     "source_locality_type"
    t.string   "grid_type",                :limit => 1
    t.integer  "easting"
    t.integer  "northing"
    t.datetime "creation_date_time"
    t.datetime "modification_date_time"
    t.integer  "revision_number"
    t.text     "modification"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

  create_table "locality_alternative_names", :force => true do |t|
    t.string   "nptg_locality_code",     :limit => 8
    t.string   "old_nptg_locality_code", :limit => 8
    t.text     "locality_name"
    t.string   "locality_name_lang",     :limit => 2
    t.text     "short_name"
    t.string   "short_name_lang",        :limit => 2
    t.text     "qualifier_name"
    t.string   "qualifier_name_lang",    :limit => 2
    t.text     "qualifier_locality_ref"
    t.text     "qualifier_district_ref"
    t.datetime "creation_date_time"
    t.datetime "modification_date_time"
    t.integer  "revision_number"
    t.text     "modification"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

  create_table "locality_hierarchies", :force => true do |t|
    t.string   "parent_nptg_locality_code", :limit => 8
    t.string   "child_nptg_locality_code",  :limit => 8
    t.datetime "creation_date_time"
    t.datetime "modification_date_time"
    t.integer  "revision_number"
    t.text     "modification"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  create_table "plusbus_mappings", :force => true do |t|
    t.text     "plusbus_zone_code"
    t.integer  "sequence"
    t.string   "grid_type",              :limit => 1
    t.integer  "easting"
    t.integer  "northing"
    t.datetime "creation_date_time"
    t.datetime "modification_date_time"
    t.integer  "revision_number"
    t.text     "modification"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

  create_table "plusbus_zones", :force => true do |t|
    t.text     "plusbus_zone_code"
    t.text     "name"
    t.string   "name_lang",              :limit => 2
    t.text     "country"
    t.datetime "creation_date_time"
    t.datetime "modification_date_time"
    t.integer  "revision_number"
    t.text     "modification"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

  create_table "regions", :force => true do |t|
    t.string   "region_code",            :limit => 2
    t.text     "region_name"
    t.string   "region_name_lang",       :limit => 2
    t.datetime "creation_date_time"
    t.integer  "revision_number"
    t.datetime "modification_date_time"
    t.text     "modification"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

end
