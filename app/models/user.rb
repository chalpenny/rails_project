class User < ApplicationRecord
    has_many :clients, through: :appointments
end
