class ChangeUserIdInJobListings < ActiveRecord::Migration
  def self.up
    change_column :job_listings, :user_id, 'integer USING CAST("user_id" AS integer)'
  end
 
  def self.down
    change_column :job_listings, :user_id, :string
  end
end
