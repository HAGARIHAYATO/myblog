class ArticlesController < ApplicationController
  def index
    @articles = Article.includes(:category).page(params[:page]).per(8)
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = 'success'
      redirect_to article_path(@article)
    else
      flash[:notice] = 'error'
      @article = Article.new(article_params)
      render action: :new
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      flash[:notice] = 'success'
      redirect_to article_path(@article)
    else
      flash[:notice] = 'error'
      @article = Article.find(params[:id])
      render action: :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to root_path
  end

  private
  def article_params
    params.require(:article).permit(:title, :text, :created_at, :category_id)
  end
end
