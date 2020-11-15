class AddEmployerIdToRequests < ActiveRecord::Migration[5.2]
  def change
    add_reference :requests, :employer, references: :users, index: true
    add_foreign_key :requests, :users, column: :employer_id
  end
end
