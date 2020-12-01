class Movie < ApplicationRecord
  belongs_to :actor
  belongs_to :director
  has_many :comments
  has_many :reviews
  has_one_attached :photo
  has_one_attached :video
  validates :title, presence: true, uniqueness: true
  validates :imdb_score, presence: true
  validates :summary, presence: true, length: { maximum: 500 }
  validates :year, presence: true
  validates :genre, presence: true
  validates :country, presence: true
end
