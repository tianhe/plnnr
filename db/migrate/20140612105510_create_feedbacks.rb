class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :action_id
      t.string  :name
      t.text    :description

      t.timestamps
    end
  end
end
