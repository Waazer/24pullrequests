class SetGiftIndexAsUnique < ActiveRecord::Migration
  def change
    remove_index :gifts, [:user_id, :pull_request_id]
    add_index :gifts, [:user_id, :pull_request_id], unique: true
  end
end
