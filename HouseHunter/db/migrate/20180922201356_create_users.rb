class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :user_name
      t.text :password
      t.text :email_address
      t.text :first_name
      t.text :last_name
      t.text :middle_name
      t.text :preferred_contact_method
      t.text :phone_number

      t.timestamps
    end
  end
end
