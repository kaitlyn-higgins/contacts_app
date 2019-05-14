Rails.application.routes.draw do
  namespace :api do
    get "/contact_url" => "contacts#contact_action"
    get "/contacts" => "contacts#index"
    get "/contacts/:id" => "contacts#show"
    post "/contacts" => "contacts#create"
    patch "/contacts/:id" => "contacts#update"
  end
  
end
