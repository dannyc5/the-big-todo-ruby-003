class TodosController < ApplicationController
  def new
    @todo = Todo.new
  end

  def create
    @todo_list = TodoList.find(todo_params[:todo_list_id])

    if @todo_list.todos.create(todo_params)
      redirect_to @todo_list
    else
      render :action => 'new'
    end
  end

  private

  def todo_params
    params.require(:todo).permit(:name, :todo_list_id)
  end
end
