class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password
      t.string :email_address
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.integer :phone_number
      t.string :preferred_contact_method
      t.string :role_type

      t.timestamps
    end
  end
end
