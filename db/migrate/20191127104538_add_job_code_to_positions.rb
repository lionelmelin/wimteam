class AddJobCodeToPositions < ActiveRecord::Migration[5.2]
  def change
    add_column :positions, :job_code, :string
  end
end
