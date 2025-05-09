class Product < ApplicationRecord
  # This class represents a product in the database.

  # Defines a one-to-many relationship: one product has many reviews.
  # Adding `dependent: :destroy` means that if a product is deleted,
  # all its associated reviews will also be deleted.
  has_many :reviews, dependent: :destroy

  # Basic validation for the product name
  validates :name, presence: true

  # We could add a method here later to calculate the average rating for a product.
end
