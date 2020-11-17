class CreateHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :histories do |t|
      t.references :user
      t.string :controller
      t.string :action
      t.string :path
      t.boolean :object_deleted ,default:false
      t.string :object_changed_description

      t.timestamps
    end
  end
end
