class Director < ApplicationRecord
  has_many :movies
  has_one_attahced :photo
  validates :fullname, presence: true, uniqueness: true
  validates :biography, presence: true
  validates :birthday, presence: true
end
