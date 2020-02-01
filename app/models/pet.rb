class Pet < ApplicationRecord
  belongs_to :client
  has_many :appointments, through: :clients 
  has_many :notes, as: :notable
  
  validates :name, uniqueness: { scope: :client, message: ": this pet has already been added" }

end
