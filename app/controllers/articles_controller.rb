class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update]

  def index
    @articles = Article.all
  end

  def show
    # no additional code needed
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(article_params)
    redirect_to show_path(@article)
  end

  def edit
    # no additional code needed
  end

  def update
    raise
    @article.update(article_params)
    redirect_to show_path(@article)
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
