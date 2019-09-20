class CategoriesController < ApplicationController
  before_action :authenticate_user!, except: [:show]

  def index
  	@categories = Category.all
  	@addCategory = Category.new
  end

  def show
  	@category = Category.friendly.find(params[:id])
    @articles = @category.articles.page(params[:page]).reverse_order.per(6)
  	# @articles = @category.articles.includes(:category).page(params[:page]).per(8)
  end

  def edit
    @category = Category.friendly.find(params[:id])
  end

  def create
  	@category = Category.new(category_params)
  	if  @category.save
  		flash[:notice] = 'success'
  		redirect_to categories_path
  	else
        flash[:notice] = 'error'
  		render :index
  	end
  end

  def update
  	@category = Category.friendly.find(params[:id])
  	if  @category.update(category_params)
  		flash[:notice] = 'success'
  		redirect_to categories_path
  	else
        flash[:notice] = 'error'
  		render :index
  	end
  end

  def destroy
  	@category = Category.friendly.find(params[:id])
  	if  @category.destroy
        flash[:notice] = 'success'
  		redirect_to categories_path
  	else
        flash[:notice] = 'error'
  		render :index
  	end
  end

  private
  def category_params
  	params.require(:category).permit(:name, :category_status)
  end
end
