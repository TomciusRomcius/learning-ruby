class RemoveDateFromTodos < ActiveRecord::Migration[8.1]
  def change
    remove_column :todos, :date, :string
  end
end
