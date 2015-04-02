class ChangeJobListingIdInNotes < ActiveRecord::Migration
  def self.up
    change_column :notes, :job_listing_id, 'integer USING CAST("job_listing_id" AS integer)'
  end
 

  def self.down
    change_column :notes, :job_listing_id, :string
  end
end
