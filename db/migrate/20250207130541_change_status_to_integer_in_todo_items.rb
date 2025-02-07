class ChangeStatusToIntegerInTodoItems < ActiveRecord::Migration[7.0]
  def up
    # Remove the old status column
    remove_column :todo_items, :status
    # Add a new integer column for status
    add_column :todo_items, :status, :integer, default: 0, null: false
  end

  def down

    # Remove the integer status column
    remove_column :todo_items, :status
    # Add the old status column back
    add_column :todo_items, :status, :string, null: false
  end
end
