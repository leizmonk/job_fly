class AddQueryToJobListings < ActiveRecord::Migration
  def change
    add_column :job_listings, :query, :text
  end
end
