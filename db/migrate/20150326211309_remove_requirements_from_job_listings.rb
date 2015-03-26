class RemoveRequirementsFromJobListings < ActiveRecord::Migration
  def change
    remove_column :job_listings, :requirements, :string
  end
end
