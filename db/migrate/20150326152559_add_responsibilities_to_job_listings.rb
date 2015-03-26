class AddResponsibilitiesToJobListings < ActiveRecord::Migration
  def change
    add_column :job_listings, :responsibilities, :string
  end
end
