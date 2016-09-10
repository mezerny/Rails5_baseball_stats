Rails.application.routes.draw do
  resources :players
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'hitter_stats', to: 'players#hitter_stats', defaults: {format: :json}
  root to: redirect('/index.html')
end
