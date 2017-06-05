class Song < ApplicationRecord
  validates :title, :artist, presence: true
  validates_uniqueness_of :artist, scope: :title

end
