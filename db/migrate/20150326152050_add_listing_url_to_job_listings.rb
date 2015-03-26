class AddListingUrlToJobListings < ActiveRecord::Migration
  def change
    add_column :job_listings, :listing_url, :string
  end
end
