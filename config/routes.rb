# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#                     coins GET    /coins(.:format)                                                                         coins#index
#                           POST   /coins(.:format)                                                                         coins#create
#                  new_coin GET    /coins/new(.:format)                                                                     coins#new
#                 edit_coin GET    /coins/:id/edit(.:format)                                                                coins#edit
#                      coin GET    /coins/:id(.:format)                                                                     coins#show
#                           PATCH  /coins/:id(.:format)                                                                     coins#update
#                           PUT    /coins/:id(.:format)                                                                     coins#update
#                           DELETE /coins/:id(.:format)                                                                     coins#destroy
#                      root GET    /                                                                                        coins#index
#               coins_index GET    /coins/index(.:format)                                                                   coins#index
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  resources :mining_types
  resources :coins do
    member do
      get 'mostrar'
    end
  end

  get 'profile', to: 'mining_types#index'
  root 'welcome#index'

  # get 'mostrar' to: 'coins#mostrar'
   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
