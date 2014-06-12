class DeleteTriggeringConditionInActions < ActiveRecord::Migration
  def change
    remove_column :actions, :type, :string
  end
end
