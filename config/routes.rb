NestedFormTest::Application.routes.draw do
  
  resources :posts do
    resources :comments do
      resources :tags
    end
  end
  
  root :to => 'posts#index'
end
