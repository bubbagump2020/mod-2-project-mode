class CreateSwearwords < ActiveRecord::Migration[5.2]
    def change
        create_table(:swearwords) do |table|
            table.string :word
        end
    end
end