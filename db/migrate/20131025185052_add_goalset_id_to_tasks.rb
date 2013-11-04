class AddGoalsetIdToTasks < ActiveRecord::Migration
  def change
  	add_column :tasks, :goalset_id, :integer
  end
end
