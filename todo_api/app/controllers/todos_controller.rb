class TodosController < ApplicationController
  def getAll
    render json: Todo.all
  end

  def create
    title = params[:title]
    todo = Todo.new(title: title, isCompleted: false, date: Date.today)
    if todo.save
      render json: todo, status: :created
    else
      render json: todo.errors, status: :unprocessable_entity
    end
  end

  def update
  end

  def destroy
  end
end
