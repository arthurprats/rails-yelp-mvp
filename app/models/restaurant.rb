class Restaurant < ApplicationRecord

  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  #has a phone number
  validates :phone_number, presence: true
  #has a category, name + address + category cannot be blank
  validates :name, :address, :category, presence: true

  #valide category and non valide
  validates :category, inclusion: { in: CATEGORY }

  #has many review, should destroy child reviews when destroying self
  has_many :reviews, dependent: :destroy

end

