class CreatePlusbusZones < ActiveRecord::Migration
  def change
    create_table :plusbus_zones do |t|
      t.text       :plusbus_zone_code
      t.text       :name
      t.string     :name_lang, :limit => 2
      t.text       :country
      t.timestamp  :creation_date_time
      t.timestamp  :modification_date_time
      t.integer    :revision_number
      t.text       :modification
      t.timestamps
    end
  end
end
