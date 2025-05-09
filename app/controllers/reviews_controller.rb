class ReviewsController < ApplicationController
  # The create action will handle the submission of a new review form.
  def create
    # Find the product that the review belongs to using the 'product_id' parameter from the URL.
    @product = Product.find(params[:product_id])

    # Create a new review associated with the found product.
    # We use `review_params` (defined below) to safely get the allowed data from the form.
    @review = @product.reviews.new(review_params)

    # Attempt to save the new review to the database.
    if @review.save
      # If saved successfully, redirect back to the product's show page.
      # `notice` is a special key that adds a flash message to be displayed on the next page.
      redirect_to @product, notice: 'Review was successfully created.'
    else
      # If saving fails (e.g., due to validations), re-render the product's show page.
      # We need to make sure @product is available in the view again.
      # Note: This re-renders the *product's* show template, not a separate review new template.
      render 'products/show', status: :unprocessable_entity
    end
  end

  # Private methods are not accessible as actions from the web.
  private

  # Use strong parameters to prevent mass assignment vulnerabilities.
  # This method specifies which parameters are allowed from the form submission.
  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
