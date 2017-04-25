class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :address
      t.string :description
      t.decimal :price
      t.boolean :available
      t.references :user, foreign_key: true
      t.integer :lesee

      t.timestamps
    end
  end
end
