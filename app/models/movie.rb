class Movie < ApplicationRecord
  validates :title, presence: {strict: true}
  validates :year, numericality: { greater_than: 1990}
end
