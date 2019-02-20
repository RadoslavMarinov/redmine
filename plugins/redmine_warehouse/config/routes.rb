# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

get 'products', :to => 'products#show', as: 'products'

get 'products/:sort', :to => 'products#sort', as: 'products_sorted'