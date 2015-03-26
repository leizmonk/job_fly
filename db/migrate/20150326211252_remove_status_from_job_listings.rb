class RemoveStatusFromJobListings < ActiveRecord::Migration
  def change
    remove_column :job_listings, :status, :string
  end
end
