class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :text
      t.references :user, index: true
      t.references :problem, index: true

      t.timestamps
    end
  end
end
