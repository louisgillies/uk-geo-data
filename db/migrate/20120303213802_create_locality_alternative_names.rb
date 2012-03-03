class CreateLocalityAlternativeNames < ActiveRecord::Migration
  def change
    create_table :locality_alternative_names do |t|
      t.string     :nptg_locality_code, :limit => 8
      t.string     :old_nptg_locality_code, :limit => 8
      t.text       :locality_name
      t.string     :locality_name_lang, :limit => 2
      t.text       :short_name
      t.string     :short_name_lang, :limit => 2
      t.text       :qualifier_name
      t.string     :qualifier_name_lang, :limit => 2
      t.text       :qualifier_locality_ref
      t.text       :qualifier_district_ref
      t.timestamp  :creation_date_time
      t.timestamp  :modification_date_time
      t.integer    :revision_number
      t.text       :modification
      t.timestamps
    end
  end
end
