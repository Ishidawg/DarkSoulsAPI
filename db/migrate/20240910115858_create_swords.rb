class CreateSwords < ActiveRecord::Migration[7.1]
  def change
    create_table :swords do |t|
      t.string :name
      t.string :material
      t.integer :attack
      t.integer :durability
      t.string :weaponclass
      t.string :description
      t.decimal :price
      t.timestamps
    end
  end
end
