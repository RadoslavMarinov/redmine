Redmine::Plugin.register :redmine_warehouse do
  name 'Redmine Warehouse plugin'
  author 'Radoslav Marinov'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
end
Redmine::Plugin.register :redmine_warehouse do
  # menu :application_menu, :Warehouse, { :controller => 'products', :action => 'show' }, :caption => 'Waaarehouseeee'

  permission :view_products, :products => :show
  permission :sort_products, :products => :sort
  permission :add_storage_item, :products => :add_pos

  menu :project_menu, :Warehouse, { :controller => 'products', :action => 'sort' }, :caption => 'Warehouse', :after => :activity, :param => :project_id

end