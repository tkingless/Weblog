class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    #For display
    #render plain: params[:article].inspect

    #@article = Article.new(params[:article])
    #@article = Article.new(params.require(:article).permit(:title,:content))
    @article = Article.new(article_params)

    if @article.save
      #redirect to show action, see "rails routes"
      redirect_to @article
    else
      render 'new'
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  private
    def article_params
      params.require(:article).permit(:title,:content)
    end
end
