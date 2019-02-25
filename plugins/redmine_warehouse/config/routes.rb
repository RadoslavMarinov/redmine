# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

# get 'products', :to => 'products#sort', as: 'products'

get 'products', :to => 'products#sort', as: 'products'

# renders edit form view for editing storage position
get "products/position", :to => 'products#edit_pos', as: 'products_edit_pos'

# Save edited storage position 
post "products/position", :to => 'products#save_edited_pos', as: 'products_save_edited_pos'

# Delete storage item
delete "products/position", :to => 'products#delete_pos', as: 'products_delete_pos'

#adds new position
get "products/position/add", :to => 'products#add_pos', as: 'products_add_pos'

#saves new position
post "/products/position/add/save", :to => 'products#save_new_pos', as: 'products_save_new_pos' 

