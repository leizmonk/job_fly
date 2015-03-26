class AddUserIdToJobListings < ActiveRecord::Migration
  def change
    add_column :job_listings, :user_id, :string
  end
end
