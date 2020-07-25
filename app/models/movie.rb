class Movie < ApplicationRecord
  has_many :actors
  validates :title, presence: {strict: true}
  validates :year, numericality: { greater_than: 1990}
end
