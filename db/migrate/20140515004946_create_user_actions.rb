class CreateUserActions < ActiveRecord::Migration
  def change
    create_table :user_actions do |t|
      t.integer :user_id
      t.integer :action_id
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
