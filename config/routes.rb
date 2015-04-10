Spree::Core::Engine.add_routes do
  namespace :admin do
    resources :products do
      resource :size_chart
    end

    resources :size_types
  end

  resources :products do
    resource :size_chart, only: [:show]
  end
end
