class Bookmark < ApplicationRecord
  validates :movie_id, presence: true
  validates :overview, presence: true
  belongs_to :movie
  belongs_to :list
end
