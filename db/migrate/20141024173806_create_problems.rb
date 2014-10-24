class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.string :title
      t.text :text
      t.references :user, index: true
      t.boolean :resolved

      t.timestamps
    end
  end
end
