class CreateRewards < ActiveRecord::Migration[5.1]
  def change
    create_table :rewards do |t|
      t.integer :reward, null: false
      t.integer :user_id, null: false, foreign_key: true
      t.integer :target_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
