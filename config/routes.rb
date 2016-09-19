Rails.application.routes.draw do
  
 # resources :watch_services
 # get 'requests/index'

 #get 'requests/brand'

mount Spree::Core::Engine, at: '/'

Spree::Core::Engine.add_routes do
namespace :api, defaults: { format: 'json' } do

	resources :buy do
      resources :images
      resources :variants
      resources :product_properties
    end
	
	resources :search_page do
      resources :images
      resources :variants
      resources :product_properties
    end

	resources :search do
      resources :images
      resources :variants
      resources :product_properties
    end


	resources :single_page do
      resources :images
      resources :variants
      resources :product_properties
    end

	resources :global do

    end

#  concern :checkout_routes do
#       member do
#         put :approve
#         put :cancel
#         put :empty
#         put :apply_coupon_code
#        end
# 	end#

#	resources :checkout, concerns: :checkout_routes

    #match 'checkout/create', to: 'checkout#create', via: [:get, :post]
    #match 'checkout/update', to: 'checkout#update', via: [:get, :post]
    match 'cart', to: 'cart#index', via: [:get, :post] 
	match 'cart/sync', to: 'global#cart_sync', via: [:get, :post]   
    match 'favorite/create', to: 'favorite#create', via: [:get, :post]
    match 'favorite/destroy', to: 'favorite#destroy', via: [:get, :post]
    match 'favorite/pack', to: 'favorite#pack', via: [:get, :post]
    
    match 'cabinet', to: 'cabinet#index', via: [:get, :post]
    
    
    match 'paypal', to: 'paypal#express', via: [:get, :post]
    
    
    match 'paypal/confirm', :to => "paypal#confirm", via: [:get, :post]
    match 'paypal/cancel', :to => "paypal#cancel", via: [:get, :post]
    #match 'paypal/notify', :to => "paypal#notify", via: [:get, :post]
    
    #resources :cabinet do
    #  resources :images
    #  resources :variants
    #  resources :product_properties
   # end
   #post 'paypal', :to => "paypal#express", :as => :paypal_express
    
    
end    

end

match '/api/test/one', to: 'test#one', via: [:get, :post]
match '/api/seller/upload', to: 'seller#upload', via: [:get, :post]
match '/api/seller/add', to: 'seller#seller_add', via: [:get, :post]

match '/api/send_message', to: 'msend#index', via: [:get, :post]

match '/api/sign_in', to: 'auth#sign_in', via: 'post'
match '/api/sign_up', to: 'auth#sign_up', via: 'post'
match '/api/oauth', to: 'auth#oauth', via: [:get, :post]
match '/api/oneall', to: 'auth#oneall', via: [:get, :post]
match '/api/edit_profile', to: 'auth#edit_profile', via: [:get, :post]
match '/api/ship_address', to: 'auth#ship_address', via: [:get, :post]

match '/api/request/countries', to: 'requests#countries', via: [:get, :post]
match '/api/watch_service', to: 'watch_services#index', via: [:get, :post]



#get '/go2json/buy', to: 'expath#buy' 
#get '/go2json/sell', to: 'expath#sell'
#get '/go2json/search', to: 'expath#search'
#get '/go2json/page', to: 'expath#page'
#get '/go2json/global', to: 'expath#global'
#get '/go2json/cart', to: 'expath#cart'
#get '/go2json/shipping', to: 'expath#shipping'
#get '/go2json/checkout', to: 'expath#checkout'

get '*path', to: 'routang#any'
post '*path', to: 'routang#any'
end

