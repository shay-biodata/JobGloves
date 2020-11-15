class AddDefaultValueForAvailableToJobs < ActiveRecord::Migration[5.2]
  def change
    change_column :jobs, :available, :boolean, :default => true
  end
end
