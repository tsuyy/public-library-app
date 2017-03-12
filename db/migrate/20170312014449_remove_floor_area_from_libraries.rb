class RemoveFloorAreaFromLibraries < ActiveRecord::Migration[5.0]
  def change
    remove_column :libraries, :floor_area, :integer
  end
end
