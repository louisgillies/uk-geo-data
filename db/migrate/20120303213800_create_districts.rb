class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.integer    :district_code
      t.text       :district_name
      t.text       :district_lang
      t.integer    :administrative_area_code
      t.integer    :district_area_code
      t.timestamp  :creation_date_time
      t.timestamp  :modification_date_time
      t.integer    :revision_number
      t.text       :modification
      t.timestamps
    end
  end
end
