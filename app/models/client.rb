class Client < ApplicationRecord
    validates :name, :phone || :email, presence: true
    has_many :appointments
end
