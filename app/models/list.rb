class List < ApplicationRecord
  validates :name, presence: true
  validates :name, unique
  validates :overview, presence: true
  has_many :bookmars, dependent: :destroy
  has_many :movies, through: :bookmarks

end
