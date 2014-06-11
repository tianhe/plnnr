class AddResultsToActions < ActiveRecord::Migration
  def change
    add_column :user_actions, :results, :string
  end
end
