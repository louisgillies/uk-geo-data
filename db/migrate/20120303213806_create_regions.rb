class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string     :region_code, :limit => 2
      t.text       :region_name
      t.string     :region_name_lang, :limit => 2
      t.timestamp  :creation_date_time
      t.integer    :revision_number
      t.timestamp  :modification_date_time
      t.text       :modification
      t.timestamps
    end
  end
end
