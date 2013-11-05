class AddTodoListIdToTodos < ActiveRecord::Migration
  def change
    add_column :todos, :todo_list_id, :integer
  end
end
