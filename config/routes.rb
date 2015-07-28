Rails.application.routes.draw do
  root 'site#index'
  get '/projects', to: 'site#proj'

  scope '/blog' do
    get '/', to: 'blog#index'
    get ':id', to: 'blog#show'
  end

  devise_for :users, controllers: { registrations: "registrations" }

  scope '/wcp' do
    get '/', to: 'wcp#index'
    resources :articles, :path => 'articles' do
      resources :comments
    end
  end
end
