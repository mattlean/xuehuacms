Rails.application.routes.draw do
  root 'site#index'
  get '/projects', to: 'site#proj'

  scope '/blog' do
    get '/', to: 'blog#index'
    get ':title', to: 'blog#show', as: 'blog_show'
  end

  get '/users/sign_up' => redirect('/404.html')
  devise_for :users, controllers: { registrations: 'registrations' }

  scope '/wcp' do
    get '/', to: 'wcp#index'
    resources :articles, param: :title, :path => 'articles' do
      resources :comments
    end
  end
end
