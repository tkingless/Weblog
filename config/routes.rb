Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome/index'
  ##/ get this right: get 'welcome/', to redirect('welcome#index')
  get 'welcome' => redirect('welcome/index')
  resources :articles
  root :to => 'welcome#index'
  get '*path' => redirect('/')
end
