class RenameColumnsInRules < ActiveRecord::Migration
  def change
    rename_column :rules, :triggering_action_id, :action_id
    rename_column :rules, :resulting_action_id, :feedback_id
  end
end
