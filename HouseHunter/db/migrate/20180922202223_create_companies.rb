class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.text :name
      t.text :website
      t.text :address
      t.text :founded
      t.text :synopsis
      t.text :revenue
      t.text :size

      t.timestamps
    end
  end
end
