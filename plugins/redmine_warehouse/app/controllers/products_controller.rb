class ProductsController < ApplicationController
  def show
    @project = Project.find(params[:project_id])
    @products = Warehouse.all
  end

  def sort
    @sort = params[:sort]
    
    @products = Warehouse.all
    
    if @sort == "title"
      @products = @products.order(:title);
    elsif @sort == "price"
      @products = @products.order(:price);
    end

  end

end
