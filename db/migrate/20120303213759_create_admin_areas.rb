class CreateAdminAreas < ActiveRecord::Migration
  def change
    create_table :admin_areas do |t|
      t.integer    :administrative_area_code
      t.integer    :atco_area_code
      t.text       :area_name
      t.text       :area_name_lang
      t.text       :short_name
      t.text       :short_name_lang
      t.string     :country, :limit => 3
      t.string     :region_code, :limit => 2
      t.integer    :maximum_length_for_short_names
      t.integer    :national
      t.text       :contact_email
      t.text       :contact_telephone
      t.timestamp  :creation_date_time
      t.timestamp  :modification_date_time
      t.integer    :revision_number
      t.text       :modification
      t.timestamps
    end
  end
end
