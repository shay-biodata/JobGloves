class AddOccupiedByColumnToJobs < ActiveRecord::Migration[5.2]
  def change
    add_reference :jobs, :occupied_by, foreign_key: { to_table: :users }
  end
end
