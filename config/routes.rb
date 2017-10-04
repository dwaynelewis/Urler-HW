Rails.application.routes.draw do



  root 'urls#new'

  post '/' => "urls#create"

  get 'index' => 'urls#index'

  get '/:id' => 'urls#substitute'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
