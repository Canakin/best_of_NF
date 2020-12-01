class Actor < ApplicationRecord
  has_many :movies
  has_one_attahced :photo
  validates :fullname, presence: true, uniqueness: true
  validates :biography, presence: true, length: { maximum: 500 }
  validates :birthday, presence: true
  validates :height, presence: true
end
