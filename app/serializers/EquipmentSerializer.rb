class EquipmentSerializer
  include JSONAPI::Serializer

  attributes :name, :equipment_type
end
