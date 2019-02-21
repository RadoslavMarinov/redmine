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
    end
  end

  # EDIT
  def edit_pos
    @post_data = params
    @title = params[:title]
    @amount = params[:amount]
    @price = params[:price]
    @issue_id = params[:issue_id]
    @release_date = params[:release_date]
  end

  #SAVE_POS save position after being edited from 
  # "edit_pos" form

end
