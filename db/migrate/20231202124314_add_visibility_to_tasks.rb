class AddVisibilityToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :visibility, :string
  end
end
