class Movie < ApplicationRecord
  validates :title, presence: true
  validates :title, unique
  validates :overview, presence: true
  has_many :bookmars, dependent: :destroy
  has_many :lists, through: :bookmarks
end
