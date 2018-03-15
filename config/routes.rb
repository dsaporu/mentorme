Rails.application.routes.draw do
  root :to => "mentorship_pairings#index"
  # Routes for the Mentorship_pairing resource:
  # CREATE
  get "/mentorship_pairings/new", :controller => "mentorship_pairings", :action => "new"
  post "/create_mentorship_pairing", :controller => "mentorship_pairings", :action => "create"

  # READ
  get "/mentorship_pairings", :controller => "mentorship_pairings", :action => "index"
  get "/mentorship_pairings/:id", :controller => "mentorship_pairings", :action => "show"

  # UPDATE
  get "/mentorship_pairings/:id/edit", :controller => "mentorship_pairings", :action => "edit"
  post "/update_mentorship_pairing/:id", :controller => "mentorship_pairings", :action => "update"

  # DELETE
  get "/delete_mentorship_pairing/:id", :controller => "mentorship_pairings", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
