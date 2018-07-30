class CreateRewards < ActiveRecord::Migration[5.1]
  def change
    create_table :rewards do |t|
      t.integer :reward
      t.integer :user_id
      t.integer :target_id

      t.timestamps
    end
  end
end
