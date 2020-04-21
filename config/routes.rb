Rails.application.routes.draw do
  get 'sentences/new'
  get 'sentences/create'
  get 'sentences/update'
  get 'sentences/edit'
  get 'sentences/delete'
  get 'sentences/destroy'
  get 'sentences/index'
  get 'sentences/show'
  get 'words/new'
  get 'words/create'
  get 'words/update'
  get 'words/edit'
  get 'words/destroy'
  get 'words/index'
  get 'words/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
