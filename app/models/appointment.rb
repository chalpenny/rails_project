class Appointment < ApplicationRecord
    #validates :start_date
    belongs_to :user
    belongs_to :client
    has_many :pets, through: :clients
    has_many :notes, as: :notable

end
