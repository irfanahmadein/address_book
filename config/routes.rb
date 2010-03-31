ActionController::Routing::Routes.draw do |map|
  # See how all your routes lay out with "rake routes"
  map.root :controller => 'contacts'
  map.resources :contacts
end
