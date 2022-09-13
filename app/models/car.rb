class Car < ApplicationRecord
  has_many :variants
  accepts_nested_attributes_for :variants

  validates :name, presence: true
  validates :price, presence: true
end
