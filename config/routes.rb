Rails.application.routes.draw do
  Xuehua::Application.routes.draw do
  	root to: 'articles#index'
    resources :articles do
    	resources :comments
    end
    resources :tags
  end
end
