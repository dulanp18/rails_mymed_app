class AddColumnsToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :repeat_days, :integer
  end
end
