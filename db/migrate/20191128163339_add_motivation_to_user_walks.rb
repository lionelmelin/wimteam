class AddMotivationToUserWalks < ActiveRecord::Migration[5.2]
  def change
    add_column :user_walks, :motivation, :text
  end
end
