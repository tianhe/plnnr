class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.integer :credit_score
      t.integer :annual_income
      t.integer :cash
      t.integer :max_budget
      t.integer :min_budget
      t.integer :estimated_mortgage_amount
      t.decimal :estimated_mortgage_rate
      t.integer :actual_mortgage_amount
      t.decimal :actual_mortgage_rate
      t.string :stage

      t.timestamps
    end
  end
end
