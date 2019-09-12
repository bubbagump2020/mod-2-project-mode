class AddVisitIdToNames < ActiveRecord::Migration[5.2]
    def change
        add_column :names, :visit_id, :bigint
    end
end