class AddAnnualNetIncomeToUserProfiles < ActiveRecord::Migration
  def change
    add_column :user_profiles, :annual_net_income, :integer
    rename_column :user_profiles, :annual_income, :annual_gross_income
  end
end
