Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  resources :teams, defaults: { format: :html } do
    member do
      put 'add_member/:member_id', to: 'teams#add_member'
      get 'members', to: 'teams#members'
    end
  end

  resources :projects, defaults: { format: :html } do
    member do
      put 'add_member/:member_id', to: 'projects#add_member'
      get 'members', to: 'projects#members'
    end
  end

  resources :members, defaults: { format: :html } do
    member do
      put 'update_team/:team_id', to: 'members#update_team'
      put 'add_project/:project_id', to: 'members#add_project'
      get 'projects', to: 'members#projects'
    end
  end

  # Defines the root path route ("/")
  # root "posts#index"
end
