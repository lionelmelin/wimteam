class CreateUserWalks < ActiveRecord::Migration[5.2]
  def change
    create_table :user_walks do |t|
      t.references :user, foreign_key: true
      t.references :walk, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.string :job
      t.string :status
      t.string :review

      t.timestamps
    end
  end
end
