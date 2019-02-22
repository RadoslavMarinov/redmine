# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

get 'products', :to => 'products#sort', as: 'products'

get 'products/:sort', :to => 'products#sort', as: 'products_sorted'

# renders edit form view for editing storage position
post "products/position/edit", :to => 'products#edit_pos', as: 'products_edit_pos'

#deletes storage item
get "products/position/delete", :to => 'products#delete_pos', as: 'products_delete_pos'

#adds new position
get "products/position/add", :to => 'products#add_pos', as: 'products_add_pos'

#saves new position
post "/products/position/add/save", :to => 'products#save_new_pos', as: 'products_save_new_pos' 

# Save edited storage position 
post "products/edit/save", :to => 'products#save_edited_pos', as: 'products_save_edited_pos'