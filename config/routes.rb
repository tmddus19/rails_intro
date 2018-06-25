Rails.application.routes.draw do
  get 'posts/index'
  # get '/posts/index'와 같음

  get 'posts/new'
  
  get 'posts/create'
  
  get 'posts/show/:id' => 'posts#show'
  
  

  get '/' => 'home#index' #home 컨트롤러 안에 index 액션(메소드)
  get '/lotto' => 'home#lotto' #home 컨트롤러 안에 lotto 액션
  get '/lunch' => 'home#lunch'
  get '/search' => 'home#search'
end
