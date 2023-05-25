class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, presence: { message: "is a required field" }
  validates :title, uniqueness: { message: "must be unique" }
  validates :overview, presence: { message: "is a required field" }
end
