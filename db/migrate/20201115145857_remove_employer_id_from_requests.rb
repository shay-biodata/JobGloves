class RemoveEmployerIdFromRequests < ActiveRecord::Migration[5.2]
  def change
    remove_column :requests, :employer_id
  end
end
