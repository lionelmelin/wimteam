class AddActiveToWalks < ActiveRecord::Migration[5.2]
  def change
    add_column :walks, :active, :boolean, default: false
  end
end
