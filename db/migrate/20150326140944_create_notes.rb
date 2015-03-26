class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :text_field
      t.datetime :due_date

      t.timestamps null: false
    end
  end
end
