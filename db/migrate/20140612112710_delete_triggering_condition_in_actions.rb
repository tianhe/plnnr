class DeleteTriggeringConditionInActions < ActiveRecord::Migration
  def change
    remove_column :actions, :type, :string
    remove_column :actions, :triggering_condition, :string
  end
end
