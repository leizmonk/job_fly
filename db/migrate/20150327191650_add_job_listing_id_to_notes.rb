class AddJobListingIdToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :job_listing_id, :string
  end
end
