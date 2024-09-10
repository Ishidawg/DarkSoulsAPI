ActiveRecord::Schema[7.1].define(version: 20_240_910_115_858) do
  create_table 'swords', force: :cascade do |t|
    t.string 'name'
    t.string 'material'
    t.integer 'attack'
    t.integer 'durability'
    t.string 'weaponclass'
    t.boolean 'isreal'
    t.string 'description'
    t.decimal 'price'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
