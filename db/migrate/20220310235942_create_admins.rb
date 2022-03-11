class CreateAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :admins do |t|
      t.string :name
      t.string :email
      t.string :position
      t.integer :private_number
      t.string :password

      t.timestamps
    end
    add_index :admins, :email, unique: true
  end
end
