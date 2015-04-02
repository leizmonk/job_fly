class ChangeNoteIdInJobListings < ActiveRecord::Migration
  def self.up
    change_column :job_listings, :note_id, 'integer USING CAST("note_id" AS integer)'
  end
 
  def self.down
    change_column :job_listings, :note_id, :string
  end
end
