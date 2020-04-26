Rails.application.routes.draw do
  root :to => 'words#index'
  post 'words/create'
  delete 'words/:id/delete', action: :delete, controller: 'words', as: 'words_delete'
  patch 'words/:id/update/', action: :update, controller: 'words', as: 'words_update'
  get 'words/:id/destroy/', action: :destroy, controller: 'words', as: 'words_destroy'
  resources :words, only: [:new, :edit, :destroy, :index, :show, :update] do
    resources :sentences, only: [:new, :edit, :destroy, :index, :show] do
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
