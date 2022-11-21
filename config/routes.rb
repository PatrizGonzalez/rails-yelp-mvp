Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :restaurants
  # Defines the root path route ("/")
  # root "articles#index"
  # Failure/Error: require File.expand_path("../../config/environment", __FILE__)
  # NameError:
  # uninitialized constant SimpleForm

  # SimpleForm.setup do |config|
  # ^^^^^^^^^^
  # Did you mean?  SimpleDelegator
end
