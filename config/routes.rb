Rails.application.routes.draw do
  devise_for :authors
  root to: 'portfolio/projects#index'

  namespace :authors do
    resources :projects
    
  end

  #resources :projects

  scope module: 'portfolio' do
    get 'about' => 'pages#about', as: :about
    get 'contact' => 'pages#contact', as: :contact
    get 'projects' => 'projects#index', as: :projects
    get 'projects/:id' => 'projects#show', as: :project
    
  end
end