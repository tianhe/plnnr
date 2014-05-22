class AddTriggeringConditionToActions < ActiveRecord::Migration
  def change
    add_column :actions, :triggering_condition, :string
    add_column :actions, :parent_action_id, :integer
  end
end
