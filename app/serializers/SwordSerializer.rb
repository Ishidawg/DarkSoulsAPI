class SwordSerializer
  include JSONAPI::Serializer

  attributes :name, :material, :attack, :durability, :weaponclass, :isreal, :description, :price
end
