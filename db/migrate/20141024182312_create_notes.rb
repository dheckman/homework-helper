class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :text
      t.references :user, index: true
      t.references :noteable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
