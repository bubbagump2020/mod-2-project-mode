class CreateNames < ActiveRecord::Migration[5.2]
    def change
        create_table(:names) do |table|
            table.belongs_to :user
            table.string :name
        end
    end
end