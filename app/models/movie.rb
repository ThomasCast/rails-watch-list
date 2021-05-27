class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  belongs_to :list, through: :bookmarks

  validates :title, uniqueness: true
end
