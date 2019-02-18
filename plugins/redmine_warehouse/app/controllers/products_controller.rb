class ProductsController < ApplicationController

  def show
    @products = Warehouse.all
  end

end
