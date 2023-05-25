class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  validates :name, presence: { message: "is a required field" }
  validates :name, uniqueness: { message: "must be unique" }
end
