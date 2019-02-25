# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

# get 'products', :to => 'products#sort', as: 'products'

get 'products', :to => 'products#sort', as: 'products'

# Renders edit form view for editing storage position
get "products/position", :to => 'products#edit_pos', as: 'products_edit_pos'

# Save edited storage position 
post "products/position", :to => 'products#save_edited_pos', as: 'products_save_edited_pos'

# Delete storage item
delete "products/position", :to => 'products#delete_pos', as: 'products_delete_pos'

# Renders position submition form
get "products/position/new", :to => 'products#add_pos', as: 'products_add_pos'

# Saves newly creted position
post "/products/position/new", :to => 'products#save_new_pos', as: 'products_save_new_pos' 

