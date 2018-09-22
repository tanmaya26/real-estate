class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.text :role_type

      t.timestamps
    end
  end
end
