class Pet < ApplicationRecord
  belongs_to :client
  has_many :appointments, through: :clients 
  has_many :notes, as: :notable

end
