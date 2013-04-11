Subscriptionservice::Application.routes.draw do
  # get "sub_plans/new"

  # get "sub_plans/create"

  # get "sub_plans/index"

  # get "sub_plans/update"

  # get "sub_plans/edit"

  # get "sub_plans/destroy"

  # get "users/new"

  # get "users/edit"

  # get "users/update"

  # get "users/show"

  # get "users/destroy"

  # get "users/index"

  root :to => "newspapers#index"
  resources :newspapers do
  	resources :sub_plans
  end
  resources :sub_plans

end
