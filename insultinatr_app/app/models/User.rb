class User < ApplicationRecord
    has_secure_password
    has_many(:insults)
    has_many(:names)
end