class Equipment < ApplicationRecord
  validates :name, presence: { message: "Equipment name can't be blank" }
  validates :equipment_type, presence: { message: 'Equipment type is required' }
end
