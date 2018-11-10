Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :developers, only: %i[index show create]

      resources :projects, only: %i[index show create] do
        patch 'assign_developer', on: :member
        patch 'unassign_developer', on: :member
      end
    end
  end
end
