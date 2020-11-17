class ChangeRequestStatusDefaultToRequset < ActiveRecord::Migration[5.2]
  def change 
    change_column_default :requests, :request_status_id, 3

  end
end
