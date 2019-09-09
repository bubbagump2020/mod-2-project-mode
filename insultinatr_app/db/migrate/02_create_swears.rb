class CreateSwears < ActiveRecord::Migration[5.2]
    def change
        create_table(:swears) do |table|
            table.string :word
        end
    end
end