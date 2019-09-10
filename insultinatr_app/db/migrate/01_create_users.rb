class CreateUsers < ActiveRecord::Migration[5.2]
    def change
        create_table(:users) do |table|
            table.string :email
            table.string :password_digest
        end
    end
end