class Review < ApplicationRecord
  belongs_to :restaurant

  # has a content, content cannot be blank
    validates :content, presence: true

  #has a rating, cannot be blank, rating should be an integer, rating should be a number between 0 and 5
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: [0, 1, 2, 3, 4, 5] }

end
