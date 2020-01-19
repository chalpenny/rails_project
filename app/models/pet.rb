class Pet < ApplicationRecord
  belongs_to :client
  has_many :temp_pet_notes
  accepts_nested_attributes_for :temp_pet_notes
end
