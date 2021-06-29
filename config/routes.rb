Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # show all products
  get "/products", controller: "products", action: "index"
  # show a specific product
  get "/products/:id", controller: "products", action: "show"
  #create a new product
  post "/products", controller: "products", action: "create"
  #update an existing product by overwritting data
  patch "/products/:id", controller: "products", action: "update"
  #delete an existing product
  delete "/products/:id", controller: "products", action: "destroy"
  post "/users", controller: "users", action: "create"
  post "/sessions" => "sessons#create"

  get "/users", controller: "users", action: "index"

  get "/orders", controller: "orders", action: "index"

  post "/orders", controller: "orders", action: "create"

  get "/users", controller: "users", action: "index"


end
