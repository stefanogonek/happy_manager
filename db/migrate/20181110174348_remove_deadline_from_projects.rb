class RemoveDeadlineFromProjects < ActiveRecord::Migration[5.2]
  def change
    remove_column :projects, :deadline, :date
  end
end
