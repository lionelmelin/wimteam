class AddPurposeToWalks < ActiveRecord::Migration[5.2]
  def change
    add_column :walks, :purpose, :string
  end
end
