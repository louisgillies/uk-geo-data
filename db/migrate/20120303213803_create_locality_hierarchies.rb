class CreateLocalityHierarchies < ActiveRecord::Migration
  def change
    create_table :locality_hierarchies do |t|
      t.string     :parent_nptg_locality_code, :limit => 8
      t.string     :child_nptg_locality_code, :limit => 8
      t.timestamp  :creation_date_time
      t.timestamp  :modification_date_time
      t.integer    :revision_number
      t.text       :modification
      t.timestamps
    end
  end
end
