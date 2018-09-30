class CreateUserCompanyMappings < ActiveRecord::Migration[5.2]
  def change
    create_table :user_company_mappings do |t|
      t.references :users, foreign_key: true
      t.references :companies, foreign_key: true

      t.timestamps
    end
  end
end
