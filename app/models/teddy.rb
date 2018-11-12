class Teddy < ApplicationRecord
  belongs_to :category
  monetize :price_cents

  validates :price_cents, numericality: { greater_than_or_equal_to: 0 }
end
