class Pet < ApplicationRecord
  belongs_to :client
  has_many :temp_pet_notes
end
