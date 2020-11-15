class AddPositionIdToJobs < ActiveRecord::Migration[5.2]
  def change
    add_reference :jobs, :position, foreign_key: true
  end
end
