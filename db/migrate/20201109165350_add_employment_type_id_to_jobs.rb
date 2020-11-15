class AddEmploymentTypeIdToJobs < ActiveRecord::Migration[5.2]
  def change
    remove_column :jobs, :EmploymentType_id
    add_reference :jobs, :employmenttype, foreign_key: true
  end
end
