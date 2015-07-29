class ArticlesController < ApplicationController
	before_action :authenticate_user!
	layout 'wcp_layout'
	#http_basic_authenticate_with name: 'dhh', password: 'secret', except: [:index, :show]

	def index
		@articles = Article.all
	end

	def new
		@article = Article.new
	end

	def create
		#render plain: params[:article].inspect

#=begin
		@article = Article.new(article_params)

		if @article.save
			redirect_to @article
		else
			render 'new'
		end
#=end
	end

	def show
		@article = Article.where(:title => params[:title]).first
	end

	def edit
		@article = Article.where(:title => params[:title]).first
	end

	def update
		@article = Article.where(:title => params[:title]).first

		if @article.update(article_params)
			redirect_to @article
		else
			render 'edit'
		end
	end

	def destroy
		@article = Article.where(:title => params[:title]).first
		@article.destroy

		redirect_to articles_path
	end

	private
		def article_params
			params.require(:article).permit(:title, :slug, :text)
		end
end
