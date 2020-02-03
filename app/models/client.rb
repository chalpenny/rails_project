class Client < ApplicationRecord
    validates :name, presence: true
    validate :contact_phone_or_email 

    validate :contact_phone_or_email
    
    has_many :notes, as: :notable
    has_many :pets, dependent: :destroy
    has_many :appointments, dependent: :destroy
    accepts_nested_attributes_for :appointments
    accepts_nested_attributes_for :pets

    def contact_phone_or_email
        if phone.blank? && email.blank?
            errors.add(:email, "You must enter a phone number or email address")
        end 
    end

end
