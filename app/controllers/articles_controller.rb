class ArticlesController < ApplicationController
	def new
	end

	def create
		@article = Article.new(require_params params) 
		if @article.save
			redirect_to @article
		else
			puts "error when saving article"
			redirect_to new_article_path

		end		
	end

	def show
		puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
		@article = Article.find params[:id]
		if @article.nil?
			render json: {error: "Article not found"}
		end
		p @article
		puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	end	

	def index
		@articles = Article.all
		p @articles
	end

	private
		def require_params parameters
			parameters.require(:article).permit(:title, :text)
		end
end	