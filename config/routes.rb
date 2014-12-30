Rails.application.routes.draw do
  Xuehuacms::Application.routes.draw do
    resources :articles
  end
end
