Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/all_products" => "products#all_products_method"
    get "/first_product" => "products#first_product_method"
    get "/second_product" => "products#second_product_method"
    get "/third_product" => "products#third_product_method"
  end
end
