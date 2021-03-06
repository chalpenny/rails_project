class Appointment < ApplicationRecord
    belongs_to :user
    belongs_to :client
    has_many :pets, through: :client
    has_many :notes, as: :notable

end
