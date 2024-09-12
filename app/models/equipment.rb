class Equipment < ApplicationRecord
  validates :name, presence: { message: "Equipment name can't be blank" }
end
