class JobListing < ActiveRecord::Base
  belongs_to :users
  has_many :notes
end
