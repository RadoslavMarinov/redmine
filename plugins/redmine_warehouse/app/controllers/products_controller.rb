
#TODOS:
# * Get rid of project_id param - not necessary.
#     The global var @@project_g does the job
# * 
#
class ProductsController < ApplicationController

  @@project_g = Project.find("warehouse") 

  def show
    @project = Project.find(params[:project_id])
    @products = Warehouse.all
  end

  def sort
    @project_id = params[:project_id]
    @project = @@project_g

    @sort = params[:sort]
    
    @products = Warehouse.all
    
    if @sort == "title"
      @products = @products.order(:title);
    end
  end

  # EDIT
  def edit_pos
    @project = Project.find(params[:project_id])
    @project_id = params[:project_id]
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
    @project_id = @products[:project_id]
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
    redirect_to products_path project_id: @project_id 
    # Warehouse.update()
  end

  #DELETE POSITION
  # find and delete posiotion by given title (titles must be unique)
  def delete_pos
    @project_id = params[:project_id]
    @project = @@project_g
    @title = params[:title]

    Warehouse.where(title: @title).destroy_all
    redirect_to products_path project_id: @project_id
  end

  #ADD POSITION
  #adds new position
  def add_pos

    # redirect_to products_path project_id: @project_id
  end

  #SAVE NEW POSITION
  def save_new_pos
    @products = params[:products]
    Warehouse.create( title: @products[:title],
                      price: @products[:price],
                      amount: @products[:amount],
                      release_date: @products[:release_date],
                      issue_id: @products[:issue_id]
                      )

    redirect_to products_path 
  end

end
