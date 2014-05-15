class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :stage_id
      t.string  :name
      t.text    :description
      t.integer :position

      t.timestamps
    end
  end
end
