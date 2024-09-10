class SwordSerializer
  include JSONAPI::Serializer

  attributes :name, :material, :attack, :durability, :weaponclass, :description, :price
end
