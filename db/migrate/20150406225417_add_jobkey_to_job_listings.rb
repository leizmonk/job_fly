class AddJobkeyToJobListings < ActiveRecord::Migration
  def change
    add_column :job_listings, :jobkey, :string
  end
end
