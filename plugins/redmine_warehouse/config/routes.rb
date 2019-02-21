# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

get 'products', :to => 'products#sort', as: 'products'

get 'products/:sort', :to => 'products#sort', as: 'products_sorted'

# renders edit form view for editing storage position
post "products/edit", :to => 'products#edit_pos', as: 'products_edit_pos'

# Save edited storage position 
post "products/edit/save", :to => 'products#save_edited_pos', as: 'products_save_edited_pos'