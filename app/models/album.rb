class Album < ApplicationRecord
  has_many :album_artists
  has_many :artists, :through => :album_artists
  has_many :songs, dependent: :destroy
  validates :name, presence: true
  validates_length_of :name, maximum: 100
end
