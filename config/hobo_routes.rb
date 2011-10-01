# This is an auto-generated file: don't edit!
# You can add your own routes in the config/routes.rb file
# which will override the routes in this file.

Testme::Application.routes.draw do


  # Resource routes for controller "nfl_teams"
  get 'nfl_teams(.:format)' => 'nfl_teams#index', :as => 'nfl_teams'
  get 'nfl_teams/new(.:format)', :as => 'new_nfl_team'
  get 'nfl_teams/:id/edit(.:format)' => 'nfl_teams#edit', :as => 'edit_nfl_team'
  get 'nfl_teams/:id(.:format)' => 'nfl_teams#show', :as => 'nfl_team', :constraints => { :id => %r([^/.?]+) }
  post 'nfl_teams(.:format)' => 'nfl_teams#create', :as => 'create_nfl_team'
  put 'nfl_teams/:id(.:format)' => 'nfl_teams#update', :as => 'update_nfl_team', :constraints => { :id => %r([^/.?]+) }
  delete 'nfl_teams/:id(.:format)' => 'nfl_teams#destroy', :as => 'destroy_nfl_team', :constraints => { :id => %r([^/.?]+) }


  # Resource routes for controller "categories"
  get 'categories(.:format)' => 'categories#index', :as => 'categories'
  get 'categories/new(.:format)', :as => 'new_category'
  get 'categories/:id/edit(.:format)' => 'categories#edit', :as => 'edit_category'
  get 'categories/:id(.:format)' => 'categories#show', :as => 'category', :constraints => { :id => %r([^/.?]+) }
  post 'categories(.:format)' => 'categories#create', :as => 'create_category'
  put 'categories/:id(.:format)' => 'categories#update', :as => 'update_category', :constraints => { :id => %r([^/.?]+) }
  delete 'categories/:id(.:format)' => 'categories#destroy', :as => 'destroy_category', :constraints => { :id => %r([^/.?]+) }


  # Lifecycle routes for controller "users"
  post 'users/signup(.:format)' => 'users#do_signup', :as => 'do_user_signup'
  get 'users/signup(.:format)' => 'users#signup', :as => 'user_signup'
  put 'users/:id/reset_password(.:format)' => 'users#do_reset_password', :as => 'do_user_reset_password'
  get 'users/:id/reset_password(.:format)' => 'users#reset_password', :as => 'user_reset_password'

  # Resource routes for controller "users"
  get 'users/:id/edit(.:format)' => 'users#edit', :as => 'edit_user'
  get 'users/:id(.:format)' => 'users#show', :as => 'user', :constraints => { :id => %r([^/.?]+) }
  post 'users(.:format)' => 'users#create', :as => 'create_user'
  put 'users/:id(.:format)' => 'users#update', :as => 'update_user', :constraints => { :id => %r([^/.?]+) }
  delete 'users/:id(.:format)' => 'users#destroy', :as => 'destroy_user', :constraints => { :id => %r([^/.?]+) }

  # Show action routes for controller "users"
  get 'users/:id/account(.:format)' => 'users#account', :as => 'user_account'

  # User routes for controller "users"
  match 'login(.:format)' => 'users#login', :as => 'user_login'
  get 'logout(.:format)' => 'users#logout', :as => 'user_logout'
  match 'forgot_password(.:format)' => 'users#forgot_password', :as => 'user_forgot_password'


  # Resource routes for controller "sports"
  get 'sports(.:format)' => 'sports#index', :as => 'sports'
  get 'sports/new(.:format)', :as => 'new_sport'
  get 'sports/:id/edit(.:format)' => 'sports#edit', :as => 'edit_sport'
  get 'sports/:id(.:format)' => 'sports#show', :as => 'sport', :constraints => { :id => %r([^/.?]+) }
  post 'sports(.:format)' => 'sports#create', :as => 'create_sport'
  put 'sports/:id(.:format)' => 'sports#update', :as => 'update_sport', :constraints => { :id => %r([^/.?]+) }
  delete 'sports/:id(.:format)' => 'sports#destroy', :as => 'destroy_sport', :constraints => { :id => %r([^/.?]+) }


  # Resource routes for controller "politics"
  get 'politics(.:format)' => 'politics#index', :as => 'politics'
  get 'politics/new(.:format)', :as => 'new_politic'
  get 'politics/:id/edit(.:format)' => 'politics#edit', :as => 'edit_politic'
  get 'politics/:id(.:format)' => 'politics#show', :as => 'politic', :constraints => { :id => %r([^/.?]+) }
  post 'politics(.:format)' => 'politics#create', :as => 'create_politic'
  put 'politics/:id(.:format)' => 'politics#update', :as => 'update_politic', :constraints => { :id => %r([^/.?]+) }
  delete 'politics/:id(.:format)' => 'politics#destroy', :as => 'destroy_politic', :constraints => { :id => %r([^/.?]+) }


  # Resource routes for controller "entertainments"
  get 'entertainments(.:format)' => 'entertainments#index', :as => 'entertainments'
  get 'entertainments/new(.:format)', :as => 'new_entertainment'
  get 'entertainments/:id/edit(.:format)' => 'entertainments#edit', :as => 'edit_entertainment'
  get 'entertainments/:id(.:format)' => 'entertainments#show', :as => 'entertainment', :constraints => { :id => %r([^/.?]+) }
  post 'entertainments(.:format)' => 'entertainments#create', :as => 'create_entertainment'
  put 'entertainments/:id(.:format)' => 'entertainments#update', :as => 'update_entertainment', :constraints => { :id => %r([^/.?]+) }
  delete 'entertainments/:id(.:format)' => 'entertainments#destroy', :as => 'destroy_entertainment', :constraints => { :id => %r([^/.?]+) }

end
