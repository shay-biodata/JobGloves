class RemoveEmploymentTypeTable < ActiveRecord::Migration[5.2]
  def change
    drop_table  :employment_types
  end
end
