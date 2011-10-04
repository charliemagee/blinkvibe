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


  # Resource routes for controller "nfl_cals"
  get 'nfl_cals(.:format)' => 'nfl_cals#index', :as => 'nfl_cals'
  get 'nfl_cals/new(.:format)', :as => 'new_nfl_cal'
  get 'nfl_cals/:id/edit(.:format)' => 'nfl_cals#edit', :as => 'edit_nfl_cal'
  get 'nfl_cals/:id(.:format)' => 'nfl_cals#show', :as => 'nfl_cal', :constraints => { :id => %r([^/.?]+) }
  post 'nfl_cals(.:format)' => 'nfl_cals#create', :as => 'create_nfl_cal'
  put 'nfl_cals/:id(.:format)' => 'nfl_cals#update', :as => 'update_nfl_cal', :constraints => { :id => %r([^/.?]+) }
  delete 'nfl_cals/:id(.:format)' => 'nfl_cals#destroy', :as => 'destroy_nfl_cal', :constraints => { :id => %r([^/.?]+) }


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


  # Resource routes for controller "nfl_games"
  get 'nfl_games(.:format)' => 'nfl_games#index', :as => 'nfl_games'
  get 'nfl_games/new(.:format)', :as => 'new_nfl_game'
  get 'nfl_games/:id/edit(.:format)' => 'nfl_games#edit', :as => 'edit_nfl_game'
  get 'nfl_games/:id(.:format)' => 'nfl_games#show', :as => 'nfl_game', :constraints => { :id => %r([^/.?]+) }
  post 'nfl_games(.:format)' => 'nfl_games#create', :as => 'create_nfl_game'
  put 'nfl_games/:id(.:format)' => 'nfl_games#update', :as => 'update_nfl_game', :constraints => { :id => %r([^/.?]+) }
  delete 'nfl_games/:id(.:format)' => 'nfl_games#destroy', :as => 'destroy_nfl_game', :constraints => { :id => %r([^/.?]+) }

end
