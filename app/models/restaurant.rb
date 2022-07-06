class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CUISINE = %w[Chinese Italian Japanese French Belgian]

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: CUISINE }
end
