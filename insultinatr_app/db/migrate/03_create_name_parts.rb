class CreateNameParts < ActiveRecord::Migration[5.2]
    def change
        create_table(:name_parts) do |table|
            table.string :names
        end
    end
end