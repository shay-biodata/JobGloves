class AddStatusToRequests < ActiveRecord::Migration[5.2]
  def change
    add_reference :requests, :request_status, foreign_key: true
  end
end
