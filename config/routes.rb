Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    post "/users" => "users#create"

    post "/carted_products" => "carted_products#create"
    get "/carted_products" => "carted_products#index"
    delete "/carted_products/:id" => "carted_products#destroy"

    post "/orders" => "orders#create"
    get "/orders" => "orders#index"
    get "/orders/:id" => "orders#show"

    post "/sessions" => "sessions#create"

    get "/products" => "products#index"
    get "products/:id" => "products#show"
    get "/all_products" => "products#all_products_method"
    get "/first_product" => "products#first_product_method"
    get "/second_product" => "products#second_product_method"
    get "/third_product" => "products#third_product_method"
    get "/any_product/:product_number" => "products#any_product_method"
    get "/any_product" => "products#any_product_method"
    post "/products" => "products#create"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"
  end
end
