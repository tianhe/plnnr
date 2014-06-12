class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.string  :description
      t.integer :triggering_action_id
      t.integer :resulting_action_id
      t.integer :condition_1
      t.string  :trigger_1
      t.string  :condition_2
      t.string  :trigger_2
    end

    FeedbackAction.all.each do |f|
      Rule.create(triggering_action_id: f.parent_action_id, resulting_action_id: f.id)
    end    

    FeedbackAction.all.each do |f|
      Feedback.create name: f.name, description: f.description, action_id: f.parent_action_id
    end

  end
end
