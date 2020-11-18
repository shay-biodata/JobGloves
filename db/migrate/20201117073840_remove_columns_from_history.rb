class RemoveColumnsFromHistory < ActiveRecord::Migration[5.2]
  def change
    remove_column :histories, :object_deleted
    remove_column :histories, :object_changed_description

  end
end
