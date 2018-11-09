class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name, null: false
      t.date :deadline, null: false
      t.float :estimation_in_hours, null: false
      t.boolean :deadline_is_safe, null: false

      t.timestamps
    end
  end
end
