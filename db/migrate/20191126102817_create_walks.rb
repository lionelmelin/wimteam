class CreateWalks < ActiveRecord::Migration[5.2]
  def change
    create_table :walks do |t|
      t.references :team, foreign_key: true
      t.string :duration
      t.text :description

      t.timestamps
    end
  end
end
