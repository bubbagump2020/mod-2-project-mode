class AddVisitIdToInsults < ActiveRecord::Migration[5.2]
    def change
        add_column :insults, :visit_id, :bigint
    end
end