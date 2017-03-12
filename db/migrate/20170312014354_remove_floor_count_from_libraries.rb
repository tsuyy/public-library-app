class RemoveFloorCountFromLibraries < ActiveRecord::Migration[5.0]
  def change
    remove_column :libraries, :floor_count, :integer
  end
end
