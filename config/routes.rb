Rails.application.routes.draw do
  resources :stickies
   get "/stickies", to: "stickies#index"
   get "/stickies/new", to: "stickies#new"
   post "/stickies", to: "stickies#create"
   get "/stickies/:id", to: "stickies#show"
   get "/stickies/:id/edit", to: "stickies#edit"
   patch "/stickies/:id", to: "stickies#update"
   delete "/stickies/:id", to: "stickies#destroy" 
end
