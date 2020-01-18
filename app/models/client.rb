class Client < ApplicationRecord
    validates :name, :phone || :email, presence: true
    has_many :pets
    has_many :appointments
    accepts_nested_attributes_for :appointments

end
