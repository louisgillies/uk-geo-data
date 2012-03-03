class CreatePlusbusMappings < ActiveRecord::Migration
  def change
    create_table :plusbus_mappings do |t|
      t.text       :plusbus_zone_code
      t.integer    :sequence
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
