class CreateTodoItems < ActiveRecord::Migration[7.0]
  def change
    create_table :todo_items, id: false do |t|
      t.uuid :id, primary_key: true
      t.string :description, null: false, default: ""
      t.string :status, null: false
      t.string :title, null: false

      t.timestamps
    end
  end
end
