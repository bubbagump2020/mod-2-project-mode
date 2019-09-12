class Insult < ApplicationRecord
    visitable :ahoy_visit
    belongs_to(:user)
end