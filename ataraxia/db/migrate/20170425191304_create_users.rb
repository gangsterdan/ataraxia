class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.boolean :gender
      t.integer :age
      t.string :email
      t.string :password
      t.string :phone

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
