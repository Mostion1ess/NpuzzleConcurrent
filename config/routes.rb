# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#                     coins GET    /coins(.:format)                                                                         coins#index
#                           POST   /coins(.:format)                                                                         coins#create
#                  new_coin GET    /coins/new(.:format)                                                                     coins#new
#                 edit_coin GET    /coins/:id/edit(.:format)                                                                coins#edit
#                      coin GET    /coins/:id(.:format)                                                                     coins#show
#                           PATCH  /coins/:id(.:format)                                                                     coins#update
#                           PUT 