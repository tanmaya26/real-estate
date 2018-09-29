class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :website
      t.string :address
      t.string :founded
      t.string :synopsis
      t.string :revenue
      t.integer :size

      t.timestamps
    end
  end
end
