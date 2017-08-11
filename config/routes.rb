# == Route Map
#
#                   Prefix Verb   URI Pattern                        Controller#Action
#            user_triggers GET    /user_triggers(.:format)           user_triggers#index
#                          POST   /user_triggers(.:format)           user_triggers#create
#         new_user_trigger GET    /user_triggers/new(.:format)       user_triggers#new
#        edit_user_trigger GET    /user_triggers/:id/edit(.:format)  user_triggers#edit
#             user_trigger GET    /user_triggers/:id(.:format)       user_triggers#show
#                          PATCH  /user_triggers/:id(.:format)       user_triggers#update
#                          PUT    /user_triggers/:id(.:format)       user_triggers#update
#                          DELETE /user_triggers/:id(.:format)       user_triggers#destroy
#           movie_triggers GET    /movie_triggers(.:format)          movie_triggers#index
#                          POST   /movie_triggers(.:format)          movie_triggers#create
#        new_movie_trigger GET    /movie_triggers/new(.:format)      movie_triggers#new
#       edit_movie_trigger GET    /movie_triggers/:id/edit(.:format) movie_triggers#edit
#            movie_trigger GET    /movie_triggers/:id(.:format)      movie_triggers#show
#                          PATCH  /movie_triggers/:id(.:format)      movie_triggers#update
#                          PUT    /movie_triggers/:id(.:format)      movie_triggers#update
#                          DELETE /movie_triggers/:id(.:format)      movie_triggers#destroy
#                 triggers GET    /triggers(.:format)                triggers#index
#                          POST   /triggers(.:format)                triggers#create
#              new_trigger GET    /triggers/new(.:format)            triggers#new
#             edit_trigger GET    /triggers/:id/edit(.:format)       triggers#edit
#                  trigger GET    /triggers/:id(.:format)            triggers#show
#                          PATCH  /triggers/:id(.:format)            triggers#update
#                          PUT    /triggers/:id(.:format)            triggers#update
#                          DELETE /triggers/:id(.:format)            triggers#destroy
#                   movies GET    /movies(.:format)                  movies#index
#                          POST   /movies(.:format)                  movies#create
#                new_movie GET    /movies/new(.:format)              movies#new
#               edit_movie GET    /movies/:id/edit(.:format)         movies#edit
#                    movie GET    /movies/:id(.:format)              movies#show
#                          PATCH  /movies/:id(.:format)              movies#update
#                          PUT    /movies/:id(.:format)              movies#update
#                          DELETE /movies/:id(.:format)              movies#destroy
#              admin_users GET    /admin/users(.:format)             admin/users#index
#                          POST   /admin/users(.:format)             admin/users#create
#           new_admin_user GET    /admin/users/new(.:format)         admin/users#new
#          edit_admin_user GET    /admin/users/:id/edit(.:format)    admin/users#edit
#               admin_user GET    /admin/users/:id(.:format)         admin/users#show
#                          PATCH  /admin/users/:id(.:format)         admin/users#update
#                          PUT    /admin/users/:id(.:format)         admin/users#update
#                          DELETE /admin/users/:id(.:format)         admin/users#destroy
#             admin_movies GET    /admin/movies(.:format)            admin/movies#index
#                          POST   /admin/movies(.:format)            admin/movies#create
#          new_admin_movie GET    /admin/movies/new(.:format)        admin/movies#new
#         edit_admin_movie GET    /admin/movies/:id/edit(.:format)   admin/movies#edit
#              admin_movie GET    /admin/movies/:id(.:format)        admin/movies#show
#                          PATCH  /admin/movies/:id(.:format)        admin/movies#update
#                          PUT    /admin/movies/:id(.:format)        admin/movies#update
#                          DELETE /admin/movies/:id(.:format)        admin/movies#destroy
#               admin_root GET    /admin(.:format)                   admin/users#index
#                     root GET    /                                  visitors#index
#         new_user_session GET    /users/sign_in(.:format)           devise/sessions#new
#             user_session POST   /users/sign_in(.:format)           devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)          devise/sessions#destroy
#        new_user_password GET    /users/password/new(.:format)      devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)     devise/passwords#edit
#            user_password PATCH  /users/password(.:format)          devise/passwords#update
#                          PUT    /users/password(.:format)          devise/passwords#update
#                          POST   /users/password(.:format)          devise/passwords#create
# cancel_user_registration GET    /users/cancel(.:format)            devise/registrations#cancel
#    new_user_registration GET    /users/sign_up(.:format)           devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)              devise/registrations#edit
#        user_registration PATCH  /users(.:format)                   devise/registrations#update
#                          PUT    /users(.:format)                   devise/registrations#update
#                          DELETE /users(.:format)                   devise/registrations#destroy
#                          POST   /users(.:format)                   devise/registrations#create
#                    users GET    /users(.:format)                   users#index
#                          POST   /users(.:format)                   users#create
#                 new_user GET    /users/new(.:format)               users#new
#                edit_user GET    /users/:id/edit(.:format)          users#edit
#                     user GET    /users/:id(.:format)               users#show
#                          PATCH  /users/:id(.:format)               users#update
#                          PUT    /users/:id(.:format)               users#update
#                          DELETE /users/:id(.:format)               users#destroy
#                     page GET    /pages/*id                         high_voltage/pages#show
# 

Rails.application.routes.draw do

  root to: 'visitors#index'

  devise_for :users
  resources :users

  resources :user_triggers
  resources :movie_triggers
  resources :triggers
  resources :movies

  namespace :admin do
    resources :users
    resources :movies
    resources :triggers
    resources :user_triggers
    resources :movie_triggers
    root to: "users#index"
  end
end
