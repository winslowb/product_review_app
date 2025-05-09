Rails.application.routes.draw do
  # Define routes for the Products resource.
  # Only generate routes for the index and show actions.
  resources :products, only: [:index, :show] do
    # Nest the reviews routes under products.
    # This means review URLs will look like /products/:product_id/reviews/...
    # We only need the create action for reviews (handled by the ReviewsController).
    resources :reviews, only: [:create]
  end

  # Set the root URL of the application to the products index page.
  root to: 'products#index'
end
