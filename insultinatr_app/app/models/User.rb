class User < ApplicationRecord
    has_secure_password
    has_many(:insults)
    has_many(:names)
    validates :password, confirmation: true
    has_secure_password
end