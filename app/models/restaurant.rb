class Restaurant < ActiveRecord::Base
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: ["chinese","italian","french","belgian","japanese"], allow_nil: false }

  has_many :reviews, dependent: :destroy
end
