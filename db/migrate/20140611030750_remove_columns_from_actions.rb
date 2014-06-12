class RemoveColumnsFromActions < ActiveRecord::Migration
  def change
    # remove_column :actions, :triggering_condition, :string
    # remove_column :actions, :type
    # remove_column :actions, :parent_action_id

    add_column :actions, :parent_id,  :integer
    add_column :actions, :lft,        :integer
    add_column :actions, :rgt,        :integer
    add_column :actions, :depth,      :integer
  end
end
