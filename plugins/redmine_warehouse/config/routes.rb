# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

get 'products', :to => 'products#show', as: 'products'

get 'products/:sort', :to => 'products#sort', as: 'products_sorted'

# renders edit form view for editing storage position
post "products/edit", :to => 'products#edit_pos', as: 'products_edit_pos'