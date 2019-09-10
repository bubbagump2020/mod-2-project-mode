class User < ApplicationRecord
    #skip_before_action :verify_authenticity_token
    
    has_secure_password
    has_many(:insults)
    has_many(:names)
    #validates :email, presence: true uniqueness: true
    validates :password, confirmation: true
    has_secure_password
end