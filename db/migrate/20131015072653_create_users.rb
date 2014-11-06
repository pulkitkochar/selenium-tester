class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :lastName
      t.string :emailAddr
      t.string :username
      t.string :password
      t.string :phone
      t.string :address
      t.integer :postcode
      t.date :dob
      t.string :sex
      t.boolean :tnc
      t.text :comments

      t.timestamps
    end
    add_index :users, :username, :unique => true
  end
end
