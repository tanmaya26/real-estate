class CreateHouseInterestLists < ActiveRecord::Migration[5.2]
  def change
    create_table :house_interest_lists do |t|
      t.references :user, foreign_key: true
      t.references :house, foreign_key: true
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
