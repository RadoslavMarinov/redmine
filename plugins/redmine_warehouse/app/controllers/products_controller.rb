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

  #SAVE_EDITED_POS save position after being edited from 
  # "edit_pos" form
  def save_edited_pos
    @products = params[:products]
    
    original_title = @products[:original_title]

    title = @products[:title]
    price = @products[:price]
    amount = @products[:amount]
    issue_id = @products[:issue_id]
    release_date = @products[:release_date]

    # "title = " + title
    item = Warehouse.where(:title => original_title).take  #where("title = #{@title}").take
    item.title = title
    item.price = price
    item.amount = amount
    item.issue_id = issue_id
    item.release_date = release_date
    item.save
    # Warehouse.update()
  end

end
