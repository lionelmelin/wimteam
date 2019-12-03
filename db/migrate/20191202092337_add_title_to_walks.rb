class AddTitleToWalks < ActiveRecord::Migration[5.2]
  def change
    add_column :walks, :title, :string
  end
end
