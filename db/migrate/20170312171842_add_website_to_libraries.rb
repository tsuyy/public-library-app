class AddWebsiteToLibraries < ActiveRecord::Migration[5.0]
  def change
    add_column :libraries, :website, :string
  end
end
