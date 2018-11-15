# frozen_string_literal: true

# define article controller
class ArticlesController < ApplicationController
  # define index method to show all article
  def index
    @articles = Article.all
  end

  # define show method to show article
  def show
    @article = Article.find(params[:id])
  end

  # define new method
  def new
    @article = Article.new
  end

  # define update method
  def edit
    @article = Article.find(params[:id])
  end

  # define create method
  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  # define update method to save from edit
  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  # define method to delete row
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  private

  # to whitelist our controller parameter
  def article_params
    params.require(:article).permit(:title, :text)
  end
end
