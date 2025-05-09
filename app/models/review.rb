class Review < ApplicationRecord
  # This class represents a product review.
  # It has 'content' (the review text) and 'rating' (the star rating).

  # Defines a many-to-one relationship: many reviews belong to one product.
  # This automatically adds methods like `review.product` to access the associated product.
  belongs_to :product

  # Basic validations to ensure data quality
  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }

  # We could add more validations here, e.g., ensuring a user can only review a product once.
end
