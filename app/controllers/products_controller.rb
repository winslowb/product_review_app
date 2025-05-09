class ProductsController < ApplicationController
  # The index action will display a list of all products.
  def index
    # Fetch all products from the database and store them in the @products instance variable.
    # Instance variables starting with @ are available in the views.
    @products = Product.all
  end

  # The show action will display a single product and its reviews.
  def show
    # Find the product based on the 'id' parameter from the URL.
    # Rails automatically makes URL parameters available in the `params` hash.
    @product = Product.find(params[:id])

    # We also need a new review object for the form on the product show page.
    @review = @product.reviews.new
  end
end
