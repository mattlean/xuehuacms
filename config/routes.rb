Rails.application.routes.draw do
  Xuehua::Application.routes.draw do
  	root to: 'articles#index'
    resources :articles
  end
end
