class AddTriedToProblem < ActiveRecord::Migration
  def change
    add_column :problems, :tried, :text
  end
end
