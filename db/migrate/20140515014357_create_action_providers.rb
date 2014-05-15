class CreateActionProviders < ActiveRecord::Migration
  def change
    create_table :action_providers do |t|
      t.integer :action_id
      t.integer :provider_id
      t.string :url

      t.timestamps
    end
  end
end
