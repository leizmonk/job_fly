class AddLocationToJobListings < ActiveRecord::Migration
  def change
    add_column :job_listings, :location, :string
  end
end
