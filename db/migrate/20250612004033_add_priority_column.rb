class AddPriorityColumn < ActiveRecord::Migration[8.0]
  def change
    add_column :ideas, :priority, :integer
  end
end
