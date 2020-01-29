class Client < ApplicationRecord
    validates :name, :phone || :email, presence: true
    has_many :notes, as: :notable
    has_many :pets, dependent: :destroy
    has_many :appointments, dependent: :destroy
    accepts_nested_attributes_for :appointments
    accepts_nested_attributes_for :pets

end
