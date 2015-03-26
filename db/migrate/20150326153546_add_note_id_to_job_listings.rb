class AddNoteIdToJobListings < ActiveRecord::Migration
  def change
    add_column :job_listings, :note_id, :string
  end
end
