class Note < ActiveRecord::Base
  belongs_to :job_listing

  validates :title, presence: true
  validates :text_field, presence: true
end
