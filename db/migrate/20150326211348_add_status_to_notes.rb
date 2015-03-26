class AddStatusToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :status, :string
  end
end
