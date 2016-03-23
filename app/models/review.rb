class Review < ActiveRecord::Base
  belongs_to :restaurant

  validates :restaurant, presence: true
  validates :content, presence: true
  validates :rating, presence: true, numericality: true, inclusion: { in: [0,1,2,3,4,5], allow_nil: false }

end
