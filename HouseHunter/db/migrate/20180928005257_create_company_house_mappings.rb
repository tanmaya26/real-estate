class CreateCompanyHouseMappings < ActiveRecord::Migration[5.2]
  def change
    create_table :company_house_mappings do |t|
      t.belongs_to :company, foreign_key: true
      t.belongs_to :house, foreign_key: true

      t.timestamps
    end
  end
end
