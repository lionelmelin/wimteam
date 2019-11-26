class CreatePositions < ActiveRecord::Migration[5.2]
  def change
    create_table :positions do |t|
      t.references :user, foreign_key: true
      t.references :team, foreign_key: true
      t.string :role
      t.date :start_date
      t.date :end_date
      t.string :job

      t.timestamps
    end
  end
end
