class CreateAdjacentLocalities < ActiveRecord::Migration
  def change
    create_table :adjacent_localities do |t|
      t.string     :nptg_locality_code, :limit => 8
      t.string     :adjacent_nptg_locality_code, :limit => 8
      t.timestamp  :creation_date_time
      t.timestamp  :modification_date_time
      t.integer    :revision_number
      t.text       :modification
      t.timestamps
    end
  end
end
