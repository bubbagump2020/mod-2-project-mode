class User < ApplicationRecord
    skip_before_action :verify_authenticity_token
    
    has_secure_password
    has_many(:insults)
    has_many(:names)
    validates(:username, uniqueness: true)
    validates(:password, presence: true)
    # validates(:password, confirmation: true)
end