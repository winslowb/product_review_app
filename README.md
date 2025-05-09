### Product Review App

A simple Ruby on Rails application for aggregating product reviews. Users can view a list of products, see existing reviews for a product, and submit new reviews with a star rating.

### Features
- Display a list of products.
- View details for a single product, including its reviews.
- Submit a review with content and a star rating (1-5) for a product.
- Basic data validation for reviews.

### Technologies Used
- Ruby
- Ruby on Rails
- SQLite (default development database)

### Setup Instructions

These instructions will get a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites
- Ruby (check version compatibility with the Rails version used, likely Ruby 2.7+ or 3.x)
- Rails (check version, likely Rails 6+ or 7)
- Bundler (usually installed with Ruby/Rails)

### Installation
```
Clone the repository from GitHub:

gh repo clone winslowb/product_review_app

cd product_review_app
```

### Install the required gems:
```
bundle install 
```

Set up the database:
```
rails db:migrate
```

This will create the necessary products and reviews tables in your development database.

(Optional) Add some initial data using the Rails console:
```
rails console
Product.create(name: "Smartphone", description: "A powerful and sleek smartphone.")
Product.create(name: "Laptop", description: "A lightweight and fast laptop for work and play.")
exit
```

Running the Application

Start the Rails development server:
```
rails server
```
Open your web browser and visit:
```
http://localhost:3000

