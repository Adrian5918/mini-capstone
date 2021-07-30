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
  
  get "/users", controller: "users", action: "index"
  
  get "/users", controller: "users", action: "index"

  patch "/users/:id", controller: "users", action: "update"
  
  get "/orders", controller: "orders", action: "index"
  
  post "/orders", controller: "orders", action: "create"
  
  post "/sessions" => "sessons#create"
  
  post "/carted_products", controller: "carted_products", action: "create"
  
  get "/carted_products", controller: "carted_products", action: "index"
end
