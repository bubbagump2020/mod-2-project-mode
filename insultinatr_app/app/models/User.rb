class User < ApplicationRecord
    has_secure_password
    has_many(:insults)
    has_many(:names)
    #validates :email, presence: true uniqueness: true
    validates :password, confirmation: true
    has_secure_password
end