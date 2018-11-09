class CreateDevelopers < ActiveRecord::Migration[5.2]
  def change
    create_table :developers do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :hours_per_day, null: false
      t.references :project, foreign_key: true, null: true

      t.timestamps
    end
  end
end
