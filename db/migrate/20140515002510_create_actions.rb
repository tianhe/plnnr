class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.integer :task_id
      t.string  :name
      t.text    :description
      t.integer :position
      t.string  :type
      t.string  :url

      t.timestamps
    end
  end
end
