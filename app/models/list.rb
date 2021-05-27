class List < ApplicationRecord
  has_many :movies, through: :bookmarks
  has_many :bookmarks

  validates :name, uniqueness: true, presence: true
end
