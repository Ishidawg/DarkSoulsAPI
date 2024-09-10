class Sword < ApplicationRecord
  validates :name, presence: { message: "Sword name can't be blank" }
  validates :material, presence: { message: 'Material is required' }
  validates :isreal, inclusion: { in: [true, false], message: 'Boolean value is required' }
  validates :attack, numericality: { only_integer: true, message: 'Attack must be a number' }
end
