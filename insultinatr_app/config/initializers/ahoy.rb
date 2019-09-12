class Ahoy::Store < Ahoy::DatabaseStore
    Ahoy.server_side_visits = :when_needed
end

# set to true for JavaScript tracking
Ahoy.api = false
