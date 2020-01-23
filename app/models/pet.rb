class Pet < ApplicationRecord
  belongs_to :client
  has_many :appointments, through: :clients 
end
