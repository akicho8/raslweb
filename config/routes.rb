Rails.application.routes.draw do
  resources :articles, :path => "codes"
  root :to => "articles#new"
end
