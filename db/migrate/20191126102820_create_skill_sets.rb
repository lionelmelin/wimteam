class CreateSkillSets < ActiveRecord::Migration[5.2]
  def change
    create_table :skill_sets do |t|
      t.references :skillable, polymorphic: true
      t.references :skill, foreign_key: true
      t.integer :level
      t.boolean :active

      t.timestamps
    end
  end
end
