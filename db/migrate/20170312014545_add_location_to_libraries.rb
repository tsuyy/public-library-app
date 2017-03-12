class AddLocationToLibraries < ActiveRecord::Migration[5.0]
  def change
    add_column :libraries, :location, :string
  end
end
