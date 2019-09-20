class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show, :search, :about, :archive]
  
  def about
  end

  def archive
    @articles = Article.published
  end

  def search
    @articles = Article.published.includes(:category).page(params[:page]).reverse_order.per(6).search(params[:search])
  end

  def admin
    @articles = Article.includes(:category).page(params[:page]).reverse_order.per(10)
  end

  def index
    @articles = Article.published.includes(:category).page(params[:page]).reverse_order.per(6)
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = 'success'
      redirect_to admin_path
    else
      flash[:notice] = 'error'
      @article = Article.new(article_params)
      render action: :new
    end
  end

  def show
    @article = Article.published.find(params[:id])
    @comment = Comment.new
    @comments = @article.comments
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      flash[:notice] = 'success'
      redirect_to admin_path
    else
      flash[:notice] = 'error'
      @article = Article.find(params[:id])
      render action: :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to admin_path
  end

  private
  def article_params
    params.require(:article).permit(:title, :text, :created_at, :category_id, :status, :description)
  end
end
