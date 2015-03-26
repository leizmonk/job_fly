class CreateJobListings < ActiveRecord::Migration
  def change
    create_table :job_listings do |t|
      t.datetime :date_posted
      t.datetime :date_closing
      t.string :position_name
      t.string :company_name
      t.integer :salary
      t.string :requirements
      t.string :description
      t.string :qualifications
      t.string :application_requirements
      t.string :status

      t.timestamps null: false
    end
  end
end
