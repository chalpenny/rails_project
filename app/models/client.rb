class Client < ApplicationRecord
    validates :name, :phone || :email, presence: true
end
