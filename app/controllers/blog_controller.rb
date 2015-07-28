class BlogController < ApplicationController
  def index
  	@articles = Article.all
  end

  def show
  	@article = Article.where(:title => params[:title]).first
  end
end
