class CreateInsults < ActiveRecord::Migration[5.2]
    def change
        create_table(:insults) do |table|
            table.belongs_to :user
            table.string :insult
        end
    end
end