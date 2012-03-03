class CreateLocalities < ActiveRecord::Migration
  def change
    create_table :localities do |t|
      t.string     :nptg_locality_code, :limit => 8
      t.text       :locality_name
      t.string     :locality_name_lang, :limit => 2
      t.text       :short_name
      t.string     :short_name_lang, :limit => 2
      t.text       :qualifier_name
      t.string     :qualifier_name_lang
      t.text       :qualifier_locality_ref
      t.text       :qualifier_district_ref
      t.integer    :administrative_area_code
      t.integer    :nptg_district_code
      t.text       :source_locality_type
      t.string     :grid_type, :limit => 1
      t.integer    :easting
      t.integer    :northing
      t.timestamp  :creation_date_time
      t.timestamp  :modification_date_time
      t.integer    :revision_number
      t.text       :modification
      t.timestamps
    end
  end
end
