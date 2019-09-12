class Name < ApplicationRecord
    visitable :ahoy_visit
    belongs_to(:user)
    has_many(:visits, class_name: "Ahoy::Visit")
end