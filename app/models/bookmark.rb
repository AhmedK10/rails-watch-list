class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movie_id, uniqueness: { scope: :list_id, message: "should be unique for a given movie/list couple" }
  validates :comment, length: { minimum: 6 }
end
